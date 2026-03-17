#!/usr/bin/env bash 


r=$1
if [ -z "$1" ]; then
    echo "............ Enter option 1 or 2 or 3"
    exit 1
else 
    if [ $r -ge 1 ] && [ $r -le 3 ]
    then
        for i in $(seq 1 $r)
        do 
            echo "........ counter-syntax.sh $i"
        done
    else
        echo "? ? ? bad input... Stop!"
        exit 1
    fi
fi