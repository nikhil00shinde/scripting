#!/usr/bin/env bash

nums=$1

for num in $(seq 1 $nums)
do 
    rem=$((num%2))
    str="...........  $num :  $num%2  $rem    "
    echo -n $str
    if [ $rem -eq 0 ]; then
        echo ""
    else
        echo " odd"
    fi
done
