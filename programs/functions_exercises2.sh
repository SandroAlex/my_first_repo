#!/usr/bin/env bash
# File: functions_exercises2.sh

function range {
    local number=$1
    local count=0
    if [[ $number -gt 0 ]]; then
	while [[ $count -le $number ]]; do
	    echo -n "$count " # Without new line.
	    let count=count+1
	done
	echo "" # New line.
    else
	while [[ $count -ge $number ]]; do
	    echo -n "$(($number-$count)) "
	    let count=count-1
	done
	echo ""
    fi
}

function extremes {
    local sequence=$@
    local max=0
    local min=0
    max=${sequence[@]:0:1}
    min=$max
    for element in $sequence; do
	if [[ $element -gt $max ]]; then
	    max=$element
	fi
	if [[ $element -lt $min ]]; then
	    min=$element
	fi
    done
    echo "MIN: $min"
    echo "MAX: $max"
}
