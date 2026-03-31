#!/usr/bin/env bash

val=$1

printf "Purchase =  $val cent(s)\n"
val=$((100-val))
printf "changes = $val cent(s) = "
quat=0
dime=0
nick=0
penn=0

quat=$((val/25))
val=$((val%25))

nick=$((val/10))
val=$((val%10))

dime=$((val/5))
val=$((val%5))

penn=$val


if [ $quat -ne 0 ]; then
  printf "$quat quarters + "
fi 

if [ $nick -ne 0 ]; then
  printf "$nick nickels + "
fi

if [ $dime -ne 0 ]; then
  printf "$dime dimes + "
fi


if [ $penn -ne 0 ]; then
  printf "$penn penny \n"
fi


