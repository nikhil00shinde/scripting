#!/usr/bin/env bash


uname -a
echo ${PATH}
echo ${PATH} | tr ":" '\n'
df -T -h
du -hs 
ps a --cumulative --forest -o etimes,etime,time,pcpu,%mem,start,user,pid,comm
top
htop
hostnamectl
env # good first start for the system admin
lsb_release -a
# bash --> .bashrc (first reads when u open bash shell, to go .bash_profile their it will mention which bash file its loads) 
# for vim .vimrc
# .aliases (we put all the aliases here)
# $PS1 # prompt
  ## stop print
  ## set color
  ## print
  ## stop print
  ## set color
  ## print
# \[ .............. start non-printing 
# \033[36m ........ color specification
# \] .............. stop non-printing mode 
# (\u) .............print this (in color)
# \[ 
#  \033[34m         color specification
#  \]
#  :\#:             print
#  \[               
#    \033[33m       change color 
#   \] 
#   \d:
# \[
#   \033[35m        change color 
# \]
# ::\t::            print
# \[
#   \033\32m        change color 
# \]
# \W:               print

#   \w --> /home/name/school/gwu/class/linux 
#   \W --> linux

# &>file  or >&word (file descriptor)
# >word 2>&1



## GREP : search for a string inside files (GLOBAL REGULAR EXPRESSION PRINT)
# Inside the file 
grep -iw love story.tex 
grep -iw love *.tex 

grep -inrw love dir/............ # RECURSIVE search
grep -ilrw love /dir............ # print all file names containing the string 
# -i : ignore case
# -l : print only filename 
# -n : prubt line number in file 
# -r : recursive search into subdirectories
# -w : look for string as word object 
# -v : invert match (print lines NOT matching the search string)


## find (search for files)
# file dir/ -type f ........... (file)
#           -type d ............ (directory)
#           -mtime -10 .............. (touched less than 10 days ago)
#           -mtime +30 .............. (touched more than 30 days ago)
#           -size +1G ............... (larger than 1GB)
#           -iname 
#           -size -100M ............ (smaller than 100MB)
#           -empty ................. (file or dir is empty)
# ACTIONS
#           -delete ............... (delete file if found)
#           -exec command '{}' \;
