#!/usr/bin/env bash


target="${1:-.}"

# ls -s "$target" | sort -n

for item in "$target"/*; do
    size=$(du -s "$item" 2> /dev/null | cut -f1)
    name="./$(basename "$item")"

    if [ -d "item" ]; then
        printf "%-4s    -dir-   %s\n"   "$size"  "$name"
    else
        printf "%-4s    -----   %s\n"    "$size" "$name"
    fi
done



printf "%12s  %-6s  %s\n" "SIZE(KB)" "TYPE" "PATH"
printf '%s\n' "$(printf '=%.0s' {1..60})"

# List all files and dirs with du, sort numerically
du -ak "$target" 2>/dev/null | sort -n | while IFS=$'\t' read -r size path; do
    if [[ -d "$path" && "$path" != "$target" ]]; then
        type="-dir-"
    else
        type="-----"
    fi

    # Format size with commas
    formatted_size=$(printf "%'d" "$size")
    printf "%12s  %-6s  %s\n" "$formatted_size" "$type" "$path"
done