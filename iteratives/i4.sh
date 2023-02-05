#!/usr/bin/env bash

EVEN=0
POSITIVES=0
THREE_DIGITS=0

for i in $@
do
	if [[ $(($i % 2)) -eq 0 ]]
	then
		((EVEN++))
	fi
	
	if [[ $i -gt 0 ]]
	then
		((POSITIVES++))
	fi

	if [[ ${#i} -eq 3 ]]
	then
		((THREE_DIGITS++))
	fi
done

echo "Number of EVEN numbers: $EVEN"
echo "Number of POSITIVES numbers: $POSITIVES"
echo "Number of numbers with 3 digits: $THREE_DIGITS"
