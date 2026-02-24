#!/usr/bin/env bash

printf "The file name is : $(basename $0)\n"
printf "------------------------------\n"
printf "--------------------------\n"
printf "------------------\n"



printf "Please select the following options: \n"
printf "1 : Sum of two numbers\n"
printf "2 : Print numbers from 1 to 10\n"
printf "3 : Print even numbers between 1 & 10\n"
printf "4 : Print odd numbers between 1 & 10\n"
printf "5 : All Arithmetics Operations \n"
printf "6 : Patterns using pyramids 1\n"
printf "7 : Patterns star\n"
printf "8 : Patterns using 01234567899876543210\n"
printf "9 : Exit\n"

read -p "Your choice is " choice 

printf "\n\n\n"
case "$choice" in
  1) echo "Sum of two numbers"
     read -p "First Number: " x
     read -p "Second Number: " y 
     printf "$((x + y)) is the sum"
  ;;
  2) echo "Print number from 1 to 10"
     for ((i = 0; i < 10; i++)); do
       printf "$i "
     done
     printf "\n"
  ;;
  3) echo "Print even number between 1 to 10"
     for ((i = 1; i <= 10; i++)); do 
       if (( i%2 == 0 )); then
         printf "${i} "
       fi
     done
     printf "\n"
  ;;
  4) echo "Print odd numbers between 1 to 10"
     for ((i = 1; i <= 10; i++)); do 
       if (( i%2 == 1)); then
         printf "${i} "
       fi 
     done
     printf "\n"
  ;;
  5) echo "All Arithmetics Operations"
     read -p "First Number: " x
     read -p "Second Number: " y
     printf "Multiplication: $((x * y))\n"
     printf "Addition: $((x + y))\n"
     printf "Subtraction: $((x - y))\n"
     printf "Divide: $((x / y))\n"
     printf "Modulo: $((x % y))\n"
     printf "Power: $((x ** y))"
  ;;
  6) echo "Pattern 1"
     read -p "Enter size: " n 
     for ((i = 0; i < n; i++)); do 
       for (( j = i; j < n; j++)); do 
         printf "*"
       done
       printf "\n"
     done
  ;;
  7) echo "Pattern 2"
     read -p "Enter size: " n 
     for i in $(seq 1 $n); do 
       for ((j = 1; j < i; j++)); do 
         printf " "
       done
       for ((j = i; j <= n; j++)); do 
         printf "* "
       done
       printf "\n"
     done
  ;;
  8) echo "Pattern 3"
     read -p "Enter size: " n
     for i in $(seq 1 $n); do 
       for ((j = 1; j < i; j++)); do 
         printf " "
       done 
       for ((j = i; j <= n; j++)); do 
         printf "* "
       done 
       printf "\n"
     done
     for i in $(seq 1 $n | sort -r); do 
       for ((j = 1; j <= i-1; j++)); do 
         printf " "
       done 
       for ((j = 1; j <= n - i + 1; j++)); do 
         printf "* "
       done 
       printf "\n"
     done
  ;;
  9) echo "Pattern 4"
  ;;
  *) echo default
  ;;
esac
