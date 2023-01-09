#!/bin/bash -x

read -p "Enter the number: " num
count=0

for (( i=2; i<=$num/2; i++ ))
do
	if (($num%i==0))
	then
		((count++))
	fi
done
if (($count==0))
then
	echo "$num is a prime number"
else
	echo "$num is not a prime number"
fi
