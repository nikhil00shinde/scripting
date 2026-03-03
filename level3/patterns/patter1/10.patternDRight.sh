#!/bin/bash 

full="01234567899876543210"
len=${#full}

for (( i=0; i<len; i++ )); do
        printf "%*s%s\n" "$i" "" "${full:$i}"
done
