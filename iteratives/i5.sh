#!/usr/bin/env bash

[[ $# -ne 3 ]] && echo "Enter three arguments" && exit 1
[[ $2 -lt 1 ]] && echo "Number must be positive" && exit 1
[[ ! -w $3 ]] && echo "Need write permissions" && exit 1

cd $3

for i in $(seq 1 $2)
do
	echo "Input: $1" >> word_$1.dat
done
