#!/bin/bash
# 6_pyramid_numbers.sh — Number pyramid pattern
# Usage: ./6_pyramid_numbers.sh <height>

if [[ $# -lt 1 ]]; then
    printf " ? ? ? usage: %s <height>\n" "$0"
    exit 1
fi

height=$1

printf "Pattern: Number Pyramid (height=%d)\n\n" "$height"
for (( row=1; row<=height; row++ )); do
    for (( sp=row; sp<height;  sp++ )); do printf " ";        done
    for (( n=1;   n<=row;      n++ )); do printf "%d" "$n";  done
    for (( n=row-1; n>=1;      n-- )); do printf "%d" "$n";  done
    printf "\n"
done
