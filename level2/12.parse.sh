#!/usr/bin/env bash

# Read the text file line by line
while IFS="|" read -r name age profession; do 
  echo "Name: $name"
  echo "Age: $age"
  echo "Profession: $profession"
  echo "---"
done < data.txt 
  

