#!/bin/bash 

full="abcdefghijklmnopqrstuvwxyz"
len=${#full}
for (( i=len; i>=0; i-- )); do
    printf "::: size = %2d  [ %s ]\n" "$i" "${full:$((len - i)):$i}"
done
