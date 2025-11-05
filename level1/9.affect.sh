#!/usr/bin/env bash

arr=('-' '\' '|' '/')

#while true; do
#	for c in "${arr[@]}"; do
#		echo -en "\r $c "
#		sleep .5
#	done
#done

while true; do
	for c in {1..100}; do
		echo -en "\rLoading $c..."
		sleep .2
		if [ $c -eq "100" ]; then
			break
		fi
	done
	echo
	break
done

