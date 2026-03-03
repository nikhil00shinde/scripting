#!/bin/bash


full="01234567899876543210"
len=${#full}

for (( i=0; i<len; i++ )); do
        left_cur="${full:0:$(( len - i ))}"
        right_cur="${full:$i}"
        printf "%-22s ---- %*s%s\n" "$left_cur" "$i" "" "$right_cur"
done
