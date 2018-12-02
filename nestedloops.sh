#!/usr/bin/env bash
# File: nestedloops.sh

for number in {1..3}; do
    for letter in a b; do
	echo "Number is $number, leter is $letter."
    done
done
