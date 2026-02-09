#!/usr/bin/env bash

MAX=$1
PART=$2

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Argument does not exists."
  exit 1
fi


CURRENT=$(df -h | grep $PART | awk '{ print $5 }' | cut -d'%' -f1 | sed -n '1p')
if [ $CURRENT -gt $MAX ]; then
  echo "Current usage in percent: $CURRENT"
else
  echo "Don't worry!!!"
fi
