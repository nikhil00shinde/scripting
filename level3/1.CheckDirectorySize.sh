#!/usr/bin/env bash

path=$1
echo "$path"

set -e 

if [ ! -d $path ]; then
  echo "Provide the correct path."
  exit 1
fi 

du -sh "$path"
echo "Here is the size!!!"
