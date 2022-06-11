#!/bin/bash

rm -rf slurm_out; mkdir slurm_out

jobId1=$(sbatch --output="slurm_out/slurm-%A_%a.out" pre.sh)
jobId1=$(echo $jobId1 | sed 's/Submitted batch job //')

jobId2=$(sbatch --array=1-22 --output="slurm_out/slurm-%A_%a.out" --dependency=afterany:$jobId1 data.sh)
jobId2=$(echo $jobId2 | sed 's/Submitted batch job //')

jobId3=$(sbatch --output="slurm_out/slurm-%A_%a.out" --dependency=afterany:$jobId2 avg_far.sh)
