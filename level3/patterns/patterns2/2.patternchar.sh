#!/bin/bash 

str=""
for c in {a..z}; do
    str+="$c"
    printf "    [%s]\n" "$str"
done

