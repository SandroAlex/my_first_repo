#!/usr/bin/env bash
# File: logic_if_else_exercises2.sh

echo ""
echo "Type a number: "
echo ""

read number

if [[ $number =~ [02468]$ ]]; then

    echo ""
    echo "Even."
    echo ""
    
fi
