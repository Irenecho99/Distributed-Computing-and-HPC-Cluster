#!/bin/bash                                                                                   

cat data/allMSN.csv |cut -d, -f3,4,5 | sort -t, -k3nr | head -n1 > farthest.txt


echo Mo Tu We Th Fr Sa Su > delays.txt
cat ex.txt >> delays.txt
rm ex.txt
