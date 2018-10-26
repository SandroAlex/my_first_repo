#!/usr/bin/env bash
# File: nested.sh

if [[ $1 -gt 3 ]] && [[ $1 -lt 7 ]]; then
    if [[ $1 -eq 4 ]]; then
	echo "Four"
    elif [[ $1 -eq 5 ]]; then
	echo "Five"
    else
	echo "Six"
    fi
else
    echo "You entered: $1, not what I was looking for."
fi
