#!/usr/bin/env bash
file="randomVar"
echo "Print the date: $(date)"

echo "Print the filename: $(basename $0)"
echo "${#file}"

printf "The first argument is ${1} \n"
printf "The second argument is ${2} \n"
printf "The third argument is ${3} \n"

printf "The ninth argument is ${9} \n"
printf "The tenth argument is ${10} \n"
printf "total number of arguments = $# \n"

#if [ -f $1 ]
#then
#  echo "${1} is file"
#elif [ -d $1 ]
#then
#  echo "${1} is directory"
#else
  #echo "${1} is not a file nor directory"
#fi

printf "\n \n LOOPS \n"

for vro in $@
do
  if [ -f $vro ]
  then
    echo "${vro} is file"
  elif [ -d $vro ]
  then
   echo "${vro} is directory"
  else
   echo "------------ ${vro} is not a file nor directory --------------"
  fi
done


printf "\n \n LOOPS - Print 1 to 10 \n"
for vro in {1..10}
do 
  echo "$vro"
done

printf "\n \n LOOPS- Pattern \n"

x="01234567899876543210"
 


printf "\n \n Sum \n"
x=$1 
y=$2 
sum=$((x + y))
printf "Sum is: ${sum} \n"

printf "\n \n Operations \n"
printf "Sum is: ${sum}\n"
printf "Multi is: $((x * y))\n"
printf "Divide is: $((x / y))\n"
printf "Power is: $((x ** y))\n"
printf "Module is: $((x % y))\n"



# print "Print all the arguments = $@ \n"

### FILE MANIPULATION COMMAND
# chmod -c 600 file

### TAPE ARCHIVES (tar)
# tar -cvf archive.tar files dir -- create
# tar -uvf archive.tar files dir -- update
# tar -tvf archive.tar           -- list 

# tar -xvf archive.tar           -- extract 


### Archive and compress files files/directory (zip)
# zip -rv archive.zip file
# zip -rv archive.zip directory  # (preferred)


# unzip -l archive.zip  --- # short list of archive
# unzip -v archive.zip  --- # long list of archive
# unzip -t archive.zip  --- # test integrity of Archive
# unzip -a -d /home/usr/job   archive.zip  -- # extract archive in dir


### USER ENVIRONMENT
# alias # list all aliases

# alias lss="ls -hlrFS --color"   # create aliases
# .vimrc --- #user custom vim env 

# PS1 # System variables ..... Set terminal prompt
# /usr/local/ # user-installed software


# alias lsw="/home/usr/scripts/lsw.sh" 

# .bashrc -- System minimal user login env 
# .bashrc.local -- user custom env 
# .bashrc.profile -- in Mac Computer


# man -k 
# ${v} pattern-matching, command substitution
# $@ -- list all the arguments  
# $# -- number of arguments

# File descriptors
# 0 --- standard input 
# 1 --- standard output
# 2 --- standard error

# define global variables
# define local variables 


## variables
# name="whatever" ........ single entry assignment
# $name or ${name} references (recalls) "whatever"
# ${name} always use this syntax 

# LIST variables
# name="a b c d" ............ list entry items in the list can be accessed sequentially 

# BRANCHING CONTROL 
# if [ test ]
# then
#   ... if-clause...
# elif [ test ]
# then 
#   ...commands...
# else 
#   ...other commands....
# fi 

# case ${list} in 
# pattern1 )
#   ...command... ;
#   ...command... ;;
# pattern2 )
#   ...command... ;
#   ...command... ;;
# * )
# default case ... ;
# ..comand... ;;


# TEST CONDITIONS
# [ -f ${var} ] .............. is a file?
# [ -d ${var} ] .............. is a directory?
# [ "$u" == "$v" ] ........... string match?
# [ "$u" != "$v" ] ........... string do not match?
# [ $u -eq $v ] .......... numerical equal?
# [ $u -ne $v ] .......... numerical not equal?
# -gt -ge -lt -le 
#
# [ test1 ] && [ test2 ] .... logical AND 
# [ test1 ] || [ test2 ] .... logical OR 


# LOOP
# for variavle in $@
# do 
#   .....
# done
#
# while [ test ]
# do 
#  .....
# done


## BASH does not do floating point arithmetics!
# declare -i n=0 k u 
# -i --> integer 
# n=n+1 , n += 1 
# n=n-1 , n -= 1 (does not work)

  
done

