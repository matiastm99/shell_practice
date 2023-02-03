#!/usr/bin/env bash

DATE=$3-$2-$1

date -d $DATE > /dev/null 2>&1 && echo "Valid date" || echo "Invalid date"
