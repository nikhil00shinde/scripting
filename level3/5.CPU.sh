#!/usr/bin/env bash 
MAX=10
EMAIL=server@127.0.0.1

USE=$(grep 'cpu' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "" }' | awk -F. '{print $1}')

if [ $USE -gt $MAX ]; then
  echo "Percent used: $USE" | mail -s "Running out of CPU power" $EMAIL 
else 
  echo "Percent used: $USE"
fi
