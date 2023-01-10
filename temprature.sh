#!/bin/bash -x

echo "press 1 to Enter Temp in *C "
echo "press 2 to Enter Temperature in *F "

read -p " " c
result=0

case $c in
	1)
		read -p "Enter the Temprature in *c :" d
		if(( (($d>=0)) && (($d<=100)) ))
		then
			result=$(degToFahrn $((d)) )
		else
			echo "Invalid Temparature value "
			echo "Enter Temparature value in between 0-100 *c "
		fi
		;;
	2)
		read -p "Enter the Temparature in *F : " d
		if(( (($d>=32)) && (($d<=212)) ))
		then
			result=$( fahrnToDeg $((d)) )
		else
			echo "Invalid Temparature value "
			echo "Enter Temparature value in betweeen 0-212 *F "
		fi
		;;
	*)
			echo "Invalid Input"
		;;
esac

declare -A fahrenheit
function degToFahrn(){
			fahrenheit=$(( $(($1*$((9/5)) )) + 32 ))
			echo $fahrenheit
}

declare -A degree
function fahrenToDeg(){
			degree=$(( $(($1-32)) * $ ((9/5)) ))
			echo $degree
}
		if((c==1))
		then
			echo "Temparature in Fahrenheit : $result "
		else
			echo "Temparature in Degree : $result "
		fi
