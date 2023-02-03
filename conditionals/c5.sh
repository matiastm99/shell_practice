#!/usr/bin/env bash

M=$(echo $1 | tr '[:upper:]' '[:lower:]')

case $M in
	"february")	
		echo "${M^} has 28 days";;		

	"november"|"april"|"june"|"september")
		echo "${M^} has 30 days";;

	"january"|"march"|"may"|"july"|"august"|"october"|"december")
		echo "${M^} has 31 days";;

	*) echo "Unknown month";;
esac
