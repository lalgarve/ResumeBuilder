#!/bin/bash

directory=$1
filename=$2
sed_program=$3

filearray=( $(find $directory  -name "$filename") )
n="${#filearray[@]}"

for ((i=0; i<n; i++))
do
   file="${filearray[$i]}"
   sed "$sed_program" $file > tmp 
   mv tmp 
done


