#!/bin/bash
#Check if a given argument is a file, or a directory
#Otherwise notify the user that the argument does not exist

if [ -d $1 ]
then
	echo "$1 is a directory"
elif [ -f $1 ]
then
	echo "$1 is a file"
else
	echo "$1 does not exist!!!"
	echo -n "Choice d/f: "
	read choice

	if [ "$choice" == "d" ]
	then
		mkdir $1
	else
		touch $1
	fi
	ls -l
fi
