#!/usr/bin/env bash
# File: logic_if_else_exercises1.sh

echo ""
echo "Type something: "
echo ""

read string

if [[ $string =~ ^[A-Z].* ]]; then

    echo ""
    echo "How proper"
    echo ""
    
fi
