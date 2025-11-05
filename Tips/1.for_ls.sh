#!/bin/bash



# if the file name "my script" --> it will consider both seperater
# for f in `ls ../`; do
#	echo file is $f
#done


## BETTER PRACTICES
for f in ./files/*; do
	echo "file is $f"
done
