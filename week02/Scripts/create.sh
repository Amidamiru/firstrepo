#!/bin/bash

###Create n-files where n is an argument to the script

n=25         #stores first argument in n
first=1      #pointer to the last file number created

while true
do
	if [ -e $(whoami)$first.txt ]
	then
		((first++))
	else
		break
	fi
done  #this loop scans the current directory and checks for
      #existing files and update first at every iteration
      #this loop stops when name.number.txt does not exist


for((i=$first-1;i<$(($first+$n))-1;i++))
do
	if [ $i -eq 0 ]
	then
		touch $(whoami).txt
	else
		touch $(whoami)$i.txt
	fi
done

var=$(date '+%d-%m-%Y')
folder=$(whoami)-$var
mkdir $folder

ls -l
