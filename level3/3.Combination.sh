#!/usr/bin/env bash 

wc file.txt
# line words character
# type == command -v
ls / | wc 

ls /etc | nl | less 

ls /etc | tr ";" "\n" | nl

diff
# Compare file line by line 
# try -b, -i, -q (quiet mode) option
# < first file 
# > second file 

# VIM has similar tool vimdiff
# we can transfer the changes from one file to another 


# rename command: command is used to rename multiple files at once using pattern matching
# rename 's/old_pattern/new_pattern/' files



## Archiving tool
# 1. tar (old) tape archive (not processed in windows machine)
# tar -cvf (CREATE)
# tar -uvf (UPDATE)
# tar -lvf (LIST)
# tar -xvf (EXTRACT)

# 2. zip (more safer than tar)
# zip -rv 
# unzip -l (short list of archive) 
# unzip -t (test integrity of archive)
# unzip -a -d /home/usr/lib archive.zip (extract in dir)
# unzip -a archive.zip (extract here)


## OUTPUT REDIRECT
# > and >> 
