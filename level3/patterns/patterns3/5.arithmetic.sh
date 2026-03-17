#!/bin/bash
# 5_arithmetic.sh — All arithmetic operations
# Usage: ./5_arithmetic.sh <num1> <num2>

if [[ $# -lt 2 ]]; then
    printf " ? ? ? usage: %s <num1> <num2>\n" "$0"
    exit 1
fi

a=$1
b=$2

printf "All Arithmetic Operations\n"
printf "  arg1 = %d,  arg2 = %d\n\n"        "$a" "$b"
printf "  Addition       : %d + %d  = %d\n" "$a" "$b" "$(( a + b ))"
printf "  Subtraction    : %d - %d  = %d\n" "$a" "$b" "$(( a - b ))"
printf "  Multiplication : %d * %d  = %d\n" "$a" "$b" "$(( a * b ))"

if (( b == 0 )); then
    printf "  Division       : %d / %d  = undefined (div by zero)\n" "$a" "$b"
    printf "  Modulus        : %d %% %d = undefined (div by zero)\n" "$a" "$b"
else
    printf "  Division       : %d / %d  = %s\n" "$a" "$b" \
           "$(echo "scale=4; $a / $b" | bc -q)"
    printf "  Modulus        : %d %% %d = %d\n" "$a" "$b" "$(( a % b ))"
fi

printf "  Power          : %d ^ %d  = %d\n" "$a" "$b" "$(( a ** b ))"
