#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then echo "Enter only two paths"; exit 1; fi

if [[ ! -e $1 ]] || [[ ! -e $2 ]]
then
	echo "A file doesn't exist"
	exit 1
elif [[ ! -f $1 ]] || [[ ! -f $2 ]]
then
	echo "A file isn't a regular file"
	exit 1
elif [[ ! -r $1 ]] || [[ ! -r $2 ]]
then
	echo "A file doesn't have read permissions"
	exit 1
fi

LINES_F1=$(wc -l < $1)
LINES_F2=$(wc -l < $2)

if [[ $LINES_F1 -eq $LINES_F2 ]]
then
	echo "Same number of lines"
else
	echo "Distinct number of lines"
fi
