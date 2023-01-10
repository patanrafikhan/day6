#!/bin/bash -x

read -p "Enter the the number to get it's Harmonic value : " x
nthHarmonic=0

for((n=1;n<=$x;n++))
do
	harmonic=$(awk 'BEGIN {print '1' / '$n'}')
	nthHarmonic=$(awk 'BEGIN {print '$nthHarmonic' + '$harmonic'}')
done
echo "Harmonic Value of $x : $nthHarmonic"
