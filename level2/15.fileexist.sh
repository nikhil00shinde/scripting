#!/usr/bin/env bash

# Specify the file path
FILE_PATH="/path/to/your/file.txt"

if [ -f $FILE_PATH ]; then
  echo "The file $FILE_PATH exists."
else
  echo "The file $FILE_PATH does not exists."
fi
