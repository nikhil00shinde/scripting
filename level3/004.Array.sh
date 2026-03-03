#!/usr/bin/env bash 

name=(axe bar code digit)  # array list 
echo ${name[0]}

## String operators

# String from right % operator 
# ${var%x3z}   ........... strip the shotest occurence of "x3z" from the right 
# ${var%%x3z} ............ strip the longest occurence of "x3z" from the right 


# Strip from left # operator 
# ${var#x3z} ............ strip the shortest occurence of "x3z" from the left 
# ${var##x3z} ........... strip the longest occurence of :x3z from the left 


# {.....} using wild-card * 
# ${var%xyz*} 
# ${var%*xyz}


# let var=foo/apth/zyz
# ${var#*xyz} 
# ${var%xyz*}  ${var%%xyz*}

# example: # REMOVES EXTENSION FROM filename
# if f=bash-script-slides.tex 
# then 
# ${f%.*} returns: bash-script-slides 


# for x in scr*; do mv -v $x ${x%.*}.jpg; done


# add extra space if the size of variable number size doesn't match the size 
# %3d --> printf format specifier (Print a decimal integer (d) in a field that is at least 3 character wide
# %3d -> width 3, right aligned [  5]
# %-3d -> width 3, left aligned [5  ]
# # %03d -> width 3, zero paded [005]
