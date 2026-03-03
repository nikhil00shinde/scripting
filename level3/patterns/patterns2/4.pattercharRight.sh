#!/bin/bash 

str=""
for c in {a..z}; do
    str+="$c"
    printf "::: [%26s] :::\n" "$str"
done

