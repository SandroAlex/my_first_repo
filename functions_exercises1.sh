#!/usr/bin/env bash
# File: functions_exercises1.sh

function plier {
    mul=1
    for element in $@; do
	let mul=mul*$element
    done
    echo "Multiplication is: $mul"
}

function isiteven {
    number=$1
    if [[ $((number % 2)) == 0 ]]; then
	echo "The number $number is even (1)."
    else
	echo "The number $number is not even (0)."
    fi
}

function neven {
    even=0
    odd=0
    SOURCE="(1)"
    numbers=$@
    for element in $numbers; do
	result=$(isiteven $element)
        if echo "$result" | grep -q "$SOURCE"; then
	    let even=even+1
	else
	    let odd=odd+1
	fi
    done
    echo "Number of even numbers: $even"
    echo "Number of odd numbers: $odd"
}

function howodd {
    neven $@
    percentage=$(echo "$odd/($even+$odd)*100" | bc -l)
    echo "Percetage of odd numbers: $percentage."
}

function fibonacci {
    size=$1
    FN=0
    FNN=1
    FIB=($FN $FNN)
    count=3
    while [[ $count -le $size ]]; do
	FIB[$count]=$((FN+FNN))
	FN=$FNN
	FNN=${FIB[$count]}
	let count=count+1
    done
    echo ${FIB[*]}
}
