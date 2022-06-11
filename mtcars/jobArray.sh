#!/bin/bash

n=$SLURM_ARRAY_TASK_ID

wt_idx=7
gear_idx=11

cat mtcars$n.csv | awk -F, '$'"$gear_idx"'==3 {print}' | cut -f $wt_idx -d, > out_csv/out$n.csv
