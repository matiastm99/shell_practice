#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Enter only one number" && exit 1
[[ $1 -le 2 ]] && echo "Number must be greater than 2" && exit 1

for i in $(seq $1 -2 2)
do
	echo $i
done
