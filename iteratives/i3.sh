#!/usr/bin/env bash

[[ $# -eq 0 ]] && echo "Missing arguments" && exit 1

echo "Input: $# words"

COUNTER=0
for i in $@
do
	if [[ ${#i} -ge 3 ]]
	then
		((COUNTER++))
	fi
done

echo "Number of words with three o more letters: $COUNTER"
