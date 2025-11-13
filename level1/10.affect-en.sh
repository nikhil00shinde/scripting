#!/usr/bin/env bash

# In this, we will use flag and arguments

if [[ "$1" = "--help" ]]; then
	echo -e "\n"
	echo "This is help page"
	echo "-f:: how fast you want to load"
	echo "from 0.1 ----- 10"
fi

fast=$2
if [ "$1" = "-f" ]; then
	vr=1
	while true; do
		echo -en "\r Loading... $vr"
		((vr=vr+1))
		sleep $fast
		if [ "$vr" -eq "101" ]; then
			break;
		fi
	done
fi	
