#!/usr/bin/env bash

if ! [ -d "$1" ]; then
    echo "? ? ? bad input.... Stop ! Provide the location of the file"
    exit 1
fi

loc="$1"

extensions=$(ls "$loc" | grep -oP '\.\K[^.]+$' | sort -u)

for ext in $extensions; do
    files=($(ls -v "$loc"/*."$ext" 2>/dev/null))
    total=${#files[@]}

    echo ""
    echo "--- .$ext files: $total total ---"
    echo "---------------------------------"

    for i in "${!files[@]}"; do
        printf "[%4d/%4d] %s\n" $((i+1)) $total "${files[$i]}"
    done
done

echo "-------------------------------------------------------"
ls $loc | sort -t. -k2 | awk -F. '
{
    if (NR > 1 && prev != $NF) print "-------------------------------------";
    print $0;
    prev = $NF
}'