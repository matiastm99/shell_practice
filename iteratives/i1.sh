#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Enter only one number" && exit 1
[[ $1 -lt 1 ]] && echo "Number must be positive" && exit 1

for i in $(seq 1 2 $1)
do
	echo $i
done
