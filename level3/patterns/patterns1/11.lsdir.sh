#!/usr/bin/env bash

dir="$1"
echo "size= $(du -sh "$dir" 2>/dev/null | cut -f1)"
echo "sub-directory list"

i=1
while IFS= read -r -d '' entry; do
    size=$(du -sh "$entry" 2>/dev/null | cut -f1)
    perms=$(stat -c "%A" "$entry")
    name=$(basename "$entry")/
    printf "::: [ %2d] :::::::::: %s  %4s /// %s\n" "$i" "$perms" "$size" "$name"
    ((i++))
done < <(find "$dir" -maxdepth 1 -mindepth 1 -type d -print0 | sort -z)