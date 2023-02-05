#!/usr/bin/env bash

[[ ! -e $1 ]] && echo "Directory doesn't exist" && exit 1
[[ ! -r $1 ]] && echo "Need read permissions" && exit 1

REGULAR_FILE=0
DIRECTORY=0
LINES=0

cd $1
for i in $(ls)
do
	if [[ -f $i ]]
	then
		((REGULAR_FILE++))
		COUNTER=$(wc -l < $i)
		((LINES+=COUNTER))
	fi

	if [[ -d $i ]]
	then
		((DIRECTORY++))
	fi
done

echo "Number of regular files: $REGULAR_FILE"
echo "Number of directories: $DIRECTORY"
echo "Total number of lines: $LINES"
