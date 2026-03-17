#!/usr/bin/env bash

echo ":::::::::  calculate i/3       and       i%3"

num=$1
for i in $(seq 0 $num)
do 
    div=$((i/3))
    rem=$((i%3))
    echo  "................... $i/3 = $div         $i%3 = $rem"
done