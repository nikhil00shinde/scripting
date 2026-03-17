#!/bin/bash

DIR="${1:-.}"   # default to current directory if no arg given

echo ">>>>>>> in directory: $DIR"

# Count files and dirs separately
total_files=$(find "$DIR" -maxdepth 1 -type f | wc -l)
total_dirs=$(find "$DIR" -maxdepth 1 -type d | grep -v "^$DIR$" | wc -l)

echo "------------ total files: $total_files"
echo "------------ total dirs:  $total_dirs"

# Prompt user
printf -- "-----> enter 1 to continue: "
read input

if [ "$input" -eq 1 ]; then
    echo ""
    echo "Contents of $DIR:"
    # List with type indicator (file or directory)
    for item in "$DIR"/*; do
        if [ -f "$item" ]; then
            echo "-rwxr-xr-x   file        $(basename $item)"
        elif [ -d "$item" ]; then
            echo "drwxr-xr-x   directory   $(basename $item)"
        fi
    done
fi