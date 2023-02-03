#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then echo "Enter only one argument"; exit 1; fi

WORD=$(echo $1 | tr '[:upper:]' '[:lower:]')
REV_WORD=$(echo $1 | tr '[:upper:]' '[:lower:]' | rev)

if [[ $WORD == $REV_WORD ]]
then
	echo "Word is a palindrome"
else
	echo "Word isn't a palindrome"
fi
