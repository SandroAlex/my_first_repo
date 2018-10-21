#!/usr/bin/env bash
# File: vars_exercise1.sh

echo "$1 + $2" | bc -l
expr $1 + $2
