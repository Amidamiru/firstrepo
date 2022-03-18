#!/bin/bash
#Read a decimal from STDIN
#Convert the decimal to Binary
#Show the Binary

#Reading a value from STDIN
echo -n "Decimal: "
read number

zeroes=(0 0 0 0 0 0 0 0)
array=()
length=${#zeroes[@]}
echo "Length of the zeroes array = $length"

for((i=0;i<$length;i++))
do
	array[$i]=$(($number%2)) #save every remainder in the array
	number=$(($number/2))    #divid number by 2 at every turn
done

#echo "${zeroes[@]}"
#echo "${array[@]}"

binary=()
j=0
for((i=${#array[@]}-1;i>=0;i--))
do
	binary[$j]=${array[$i]}
	((j++))
done

echo "Binary: ${binary[@]}"
