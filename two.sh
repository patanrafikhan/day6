#!/bin/bash -x

read -p "Enter the number:" num
p=1
for ((i=2;i<=$num;i++))
do
        result=$(awk "BEGIN {printf  ${p}+ 1/${i} } ")
        p=$(awk "BEGIN {printf  ${result}} ")
done
echo $p
