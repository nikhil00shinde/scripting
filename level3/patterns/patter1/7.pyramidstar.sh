#!/bin/bash
# 7_pyramid_stars.sh - Star pyramid pattern
# Usage: ./7_pyramid_stars.sh <height>

if [[ $# -lt 1 ]]; then
    printf " ? ? ? usage: %s <height>\n" "$0"
    exit 1
fi

height=$1

printf "Pattern: Star Pyramid (height=%d)\n\n" "$height"
for (( row=1; row<=height; row++ )); do
    for (( sp=row; sp<height; sp++ )); do
        printf " "
    done
    for (( s=1; s<=(2*row-1); s++ )); do
        printf "*"
    done
    printf "\n"
done
