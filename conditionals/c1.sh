#!/usr/bin/env bash

if [[ -e $1 ]]; then
	echo "File exist"
	
	if [[ -f $1 ]]; then
		echo "Is a regular file"
	elif [[ -d $1 ]]; then
		echo "Is a directory"
	fi

else
	echo "File doesn't exist"
fi
