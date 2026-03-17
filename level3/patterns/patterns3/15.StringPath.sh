#!/bin/bash

# Exercise 3 - Strip from the RIGHT (end)
var="/home/usr1/gwu/csci6418_linux/linux/classes/2_bash/scripts/0_exercises"
echo "            starting with: $var"

while [[ -n "$var" ]]; do
    var="${var%/*}"
    echo "string variale changed to: $var"
done

echo ""
echo ":::::::::::::::::::::::::::::::::::::::::::::"
echo ":::::::::::::::::::::::::::::::::::::::::::::"
echo ""

# Exercise 4 - Strip from the LEFT (front)
var="/home/usr1/gwu/csci6418_linux/linux/classes/2_bash/scripts/0_exercises"
full_len=${#var}
echo "            starting with: $var"

while [[ -n "$var" ]]; do
    # Calculate how many chars were stripped
    cur_len=${#var}
    pad=$(( full_len - cur_len ))
    # Print with leading spaces equal to stripped amount
    printf "string variale changed to: %${pad}s%s\n" "" "$var"
    if [[ "$var" != */* ]]; then
        var=""
    else
        var="${var#*/}"
    fi
done
printf "string variale changed to: %${full_len}s\n" ""