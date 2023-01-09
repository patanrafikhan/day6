#!/bin/bash -x

read -p "Enter the range no  :" range

for ((num=2;num<=$range;num++))
do
  p=0
  for ((i=2;i<$num;i++))
  do
          
	  if [ $(($num % $i)) -eq 0 ]
	  	then
	        	p=1
                        break
          fi
  done
  if [ $p -eq 0 ]
    then
      echo $num
  fi

done
