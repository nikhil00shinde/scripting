#!/usr/bin/env bash

alphabet="abcdefghijklmnopqrstuvwxyz"
len=${#alphabet}


echo "=== RIGHT SIDE (shrink from back) ==="
sp=0
for (( i=len; i>=0; i-- )); do
    temp=$(printf '%*s' "$sp" "")
    str="${alphabet:0:$i}"
    size=${#str}
    printf "::: size = %2d  [ %-26s]\n" "$size" "$temp$str"
    ((sp++))
done

