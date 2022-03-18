#!/bin/bash
#print a list of number from 1 to 10 and print their power

for ((i=1;i<=10;i++))
do
	pow=$(($i*$i))
	echo "$i ---> $pow"
done
