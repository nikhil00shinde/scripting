#!/usr/bin/env bash

ls ./files | while read file; do
  echo  "<$file>"
done

# USE 
# 1. for+globbing for files
# 2. While+read for parsing lines of text.


shopt -s extglob

# Remove all files except .txt files
rm -v !(*.txt)

# Match filenames that are either .jpg or .png
for f in +(*.jpg|*.png); do
    echo "Image: $f"
done


# shopt -s extglob
# → Enables advanced pattern matching operators in Bash, making your shell scripting more powerful and expressive for tasks like filtering files, parsing input, or writing flexible conditions.