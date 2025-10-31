#!/bin/bash

echo "Where do you see yourself after 5 years?"
read a
echo "That's sound awesome!!! Becoming $a will take time. Are you gonna continue your studies?"
read b

if [ "$b" = "NO" ]; then
	echo "Why Not"?
else
	echo "All the best!!!"
fi

echo "At last, You should continue to strive for becoming great at something that you really like the most. CONSISTENCY!!! matters" 
