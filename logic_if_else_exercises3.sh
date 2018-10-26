#!/usr/bin/env bash
# File: logic_if_else_exercises3.sh

# If the arguments are integer numbers.
if [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]; then

    # Sum their values
    echo "$1 + $2" | bc -l

else
    
    echo "Argument 1: $1"
    echo "Argument 2: $2"
    
fi
