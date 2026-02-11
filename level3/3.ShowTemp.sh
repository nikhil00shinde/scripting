#!/usr/bin/env bash

FILE=/sys/class/thermal/thermal_zone0/temp

ORIGINAL_TEMP=$(cat $FILE)
TEMP_C=$((ORIGINAL_TEMP/1000))
TEMP_F=$(($TEMP_C * 9/5 + 32))

echo $TEMP_C C 
echo $TEMP_F F
