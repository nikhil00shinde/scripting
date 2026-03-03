#!/bin/bash
# 3_even.sh — Print even numbers between 1 and 10
# Usage: ./3_even.sh

printf "Even Numbers between 1 and 10\n"
for (( i=1; i<=10; i++ )); do
    (( i % 2 == 0 )) && printf "%d " "$i"
done
printf "\n"
