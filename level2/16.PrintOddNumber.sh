#!/usr/bin/env bash

st=1
ed=$1

for num in $(seq "$st" "$ed"); do 
  if  (( num % 2 != 0 )); then
    echo "$num is a odd number"
  fi
done

# Prime number 
# GPT code
if (( ed >= 2 )); then echo "2 is prime number"; fi 

for ((num=3; num<=ed; num++)); do 
  flag=1
  for ((k=3; k*k<= num; k+=2)); do 
    if (( num % k == 0)); then flag=0; break; fi 
  done
  (( flag == 1 )) && echo "$num is prime number"
done

# My code
for num in $( seq "2" "$ed" ); do 
  flag=1
  for k in $(seq "2" "$(( num/2))" ); do 
    if (( num % k == 0)); then
      flag=-1
    fi 
  done 
if (( flag == 1)); then
    echo "$num is prime number"
  fi 
done

