#!/usr/bin/env bash

num=""
space=8
right="987654321"
for i in  {1..9}
do 

    # Print space 
    for t in $(seq 1 $space)
    do
        printf " "
    done
    ((space--))
    num="${num}${i}"
    rem=${right:0:$i}
    echo "$num      x       8   =   $rem"
done