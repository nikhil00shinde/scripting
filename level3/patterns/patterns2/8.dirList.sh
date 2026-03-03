#!/bin/bash 

target="${1:-/etc}"

printf "\n/%s\t\t::::: size= %s\n" "$target" "$(du -sh "$target" 2>/dev/null | cut -f1)"
printf "\n::: [ %2s ] %s  %-10s %s\n" "#" "::::::::::::" "size ///" "sub-directory list"

count=0
while IFS= read -r -d "" entry; do
    count=$(( count + 1 ))
    perms=$(stat -c "%A" "$entry" 2>/dev/null)
    size=$(du -sh "$entry" 2>/dev/null | cut -f1)
    name=$(basename "$entry")
    printf "::: [%3d] :::::::::: %-12s %6s /// %s/\n" "$count" "$perms" "$size" "$name"
done < <(find "$target" -maxdepth 1 -mindepth 1 -type d -print0 2>/dev/null | sort -z)

printf "\nTotal subdirectories found: %d\n" "$count"
