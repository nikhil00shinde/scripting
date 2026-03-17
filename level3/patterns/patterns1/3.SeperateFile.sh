#!/usr/bin/env bash

# for file in $(ls ~/Downloads/); do
#     ext=$(basename $file | awk -F '.' '{print $3}')
#     echo $ext
# done
# find ~/Downloads/ -maxdepth 1 -type f | sort
# ls | sort -t. -k2 

ls ~/Downloads/ | sort -t. -k2 | awk -F. '
{
    if (NR > 1 && prev != $NF) print "-------------------------------------";
    print $0;
    prev = $NF
}'