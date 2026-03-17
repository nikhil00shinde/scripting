#!/bin/bash

folder="${1:-.}"
 
if [[ ! -d "$folder" ]]; then
    echo "  ERROR: '$folder' is not a directory."
else
    echo ""
    printf "  %-35s %-6s %-6s %-6s %-12s\n" "NAME" "READ" "WRITE" "EXEC" "TYPE"
    printf "  %-35s %-6s %-6s %-6s %-12s\n" \
        "───────────────────────────────────" "────" "─────" "────" "────────────"
 
    for item in "$folder"/*; do
        [[ ! -e "$item" ]] && echo "  (folder is empty)" && break
 
        name=$(basename "$item")
 
        if   [[ -f "$item" ]]; then type="file"
        elif [[ -d "$item" ]]; then type="directory"
        elif [[ -L "$item" ]]; then type="symlink"
        else                        type="other"
        fi
 
        [[ -r "$item" ]] && r="✔" || r="✘"
        [[ -w "$item" ]] && w="✔" || w="✘"
        [[ -x "$item" ]] && x="✔" || x="✘"
 
        printf "  %-35s %-6s %-6s %-6s %-12s\n" "$name" "$r" "$w" "$x" "$type"
    done
fi
 