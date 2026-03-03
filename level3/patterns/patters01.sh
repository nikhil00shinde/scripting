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
    x=01234567899876543210
    y=$x
    echo ".......... x = $x , y=$x"
    i=0
    while [ ${#x} -gt 0 ]; do 
      printf "x = [${x}] ::: [${y}]\n"
      x=${x%[0-9]}
      y=${y#[0-9]}
    done
  ;;
  10) echo "F to C"
    read -p "Give fh: " f 
    c=$(( (f-32) * 5 / 9))
    echo ${c}
  ;;
  11) echo "List content of the dir content - total dir total files "
    echo "read -n 1 -p ?"
  ;; 
  12) echo "lsize.sh" 
    echo "Detect and input validation, directory & file information "
    echo "du ls command" 
    echo "size (ascending order) --dir-- filename (before and after)"

  ;; 
  13)
   echo "Refer camera"
   echo "Directory info but more detailed "
  ;;
  14)
    echo "String operators"
    a="love"
    b"stroy"
    c="qw dojf"
    d=${a}-${b}
  ;; 
  15)
    echo "print a to z format [%s] left justified -- 1"
    echo "print left and right justified bothj -- 2 -- format [%-26s] [%26s]"
    echo "Strip the subdirectory path do both left and right justfied ()"
    echo "Floating point computation: $(bc )"
    bc -q -l << EOF 
    scale=${precision}
    print "$* = "
    $*
    quit
   EOF
   echo "scrath.sh if file exists"
   echo "stamp.sh rename the file (date-filename)"

  ;;
  *) echo default
  ;;
esac
