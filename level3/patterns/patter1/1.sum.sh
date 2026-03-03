#!/usr/bin/env bash

if [[ $# -lt 2 ]]; then
    printf " ? ? ? usage: %s <num1> <num2>\n" "$0"
    exit 1
fi

a=$1
b=$2

printf "Sum of Two Numbers\n"
printf "  arg1 = %d\n"    "$a"
printf "  arg2 = %d\n"    "$b"
printf "  %d + %d = %d\n" "$a" "$b" "$(( a + b ))"
