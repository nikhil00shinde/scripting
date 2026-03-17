#!/usr/bin/env bash

alphabet="abcdefghijklmnopqrstuvwxyz"
len=${#alphabet}

echo "=== LEFT SIDE ==="
sp=0
for (( i=0; i<=len; i++ )); do
    temp=$(printf '%*s' "$sp" "")
    str="${alphabet:$i}"
    size=${#str}
    printf "::: size = %2d  [ %-26s]\n" "$size" "$temp""$str"
    ((sp++))
done