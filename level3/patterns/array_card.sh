#!/usr/bin/env bash

val=${1:-500}

sec=0
thr=0
four=0
five=0
six=0
sev=0
eig=0
nin=0
ten=0
jack=0
queen=0
king=0
ace=0

for i in $(seq 1 $val); do 
  rem=((RANDOM%12))
  if [ $rem = 0 ]; then
    sec=((sec++))
  elif  [ $rem = 1 ]; then
    thr=((thr++))
  elif [ $rem = 2 ]; then
    four=((four++))
  elif [ $rem = 3 ]; then
    five=((five++))
  elif [ $rem = 4 ]; then 
    six=((six++))
  elif [ $rem = 5 ]; then
    sev=((sev++))
  elif [ $rem = 6 ]; then
    eig=((eig++))
  elif [ $rem = 7 ]; then
    nin=((nin++))
  elif [ $rem = 8 ]; then
    ten=((ten++))
  elif [ $rem = 9 ]; then
    jack=((jack++))
  elif [ $rem = 10 ]; then
    queen=((queen++))
  elif [ $rem = 11 ]; then
    king=((king++))
  else
    ace=((ace++))
  fi

  echo "$rem"

done
