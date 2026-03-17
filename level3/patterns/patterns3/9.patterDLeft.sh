#!/bin/bash 
full="01234567899876543210"
len=${#full}
for (( i=len; i>=1; i-- )); do
        printf "%s\n" "${full:0:$i}"
done

