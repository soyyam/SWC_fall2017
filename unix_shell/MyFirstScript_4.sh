#!/bin/bash

# Record the country with the highest life expectancy from the year 2002
# usage: sh script.sh inputFile year columnNo outputFileName

input=$1
year=$2
columns=$3
out=$4

cut -f1,3,$columns $input | grep $year | sort -n -k3 | tail -n 1 > $out.txt
