#!/bin/bash

echo "F to C"
f=$1
c=$(( (f-32) * 5 / 9))
echo ${c} "°C"