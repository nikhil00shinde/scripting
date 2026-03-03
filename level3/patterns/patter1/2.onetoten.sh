#!/bin/bash
# 2_one_to_ten.sh — Print numbers from 1 to 10
# Usage: ./2_one_to_ten.sh

printf "Numbers from 1 to 10\n"
for (( i=1; i<=10; i++ )); do
    printf "%d " "$i"
done
printf "\n"
