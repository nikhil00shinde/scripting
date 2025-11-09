#!/usr/bin/env bash

# find files -type f -print0 | while read file; do echo "<$file>"; done


i=0
find files -type f -print0 | while read -r -d '' file; 
do echo "<$file>"; ((i++)); done
echo "found $i files"
# It will create a subshell where the i value will be 0


echo "-__-__-"
## GOOD SCRIPT
i=0
for file in files/*; do
  echo "<$file>"
  ((i++))
done
echo "found $i files"
