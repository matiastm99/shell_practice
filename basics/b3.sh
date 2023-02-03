#!/usr/bin/env bash

[[ $(($# % 2)) -eq 0 ]] && echo "EVEN" || echo "ODD"
