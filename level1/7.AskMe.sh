#!/bin/bash

clear
cat << EOF
Please enter your choice:
	
	1.  Display My IP
	2.  Display CPU Info
	3.  Display Most Memory Using Resource
	4.  Display Current Time of India
	0.  Quit

EOF


echo -n "Choose number from 0-4 "
read -r sel

if ! [ $sel -ge 0 -a $sel -le 5 ]; then
	echo "Please Enter the valid number" >&2
	exit 1
fi


case $sel in
	0) "Bye!! Bye!!. Hope, you've a good time.";;
	1)  ip route get 8.8.8.8 | awk '{print $7}';;
	2)  lscpu;;
	3)  ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6;;
	4)  TZ="Asia/Kolkata" date;;
	*) 
		if [ "$UID" -le "1000" ]; then
			echo "Any one can run it. But the input you've provided are wrong"
		fi
esac
	
	    
