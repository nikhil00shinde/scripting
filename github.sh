#!/bin/bash

#
directory="$HOME/3.DSA/DSA"

cd "$directory" || { echo "Directory not found"; exit 1; }

myfiles=()

if [ -z "$(git status --porcelain)" ]; then
	echo "No changes to commit. Exiting!!!!. Bye!! Bye!!"
	exit 0
fi
if [ "$1" = "yes" ]; then
	echo -e "Skipping loop because I have provided the filename\n"
	while IFS= read -r line; do
		myfiles+=("$line")
	done < file.txt
elif [ "$1" = "man" ]; then
	while true; do
		echo -e "Enter the filename you want to commit (or just press Enter to stop):"
		read filename
		if [ -z "$filename" ]; then
			break
		fi
		if [ ! -f "$filename" ]; then
			echo -e "File '$filename' does not exist. Try again."
			continue
		fi
	done
else
	echo -e "If no argument is provided that means take the timestamp as the commit message\n"
fi


for i in "${!myfiles[@]}"; do
	echo "Index $i: ${myfiles[$i]}"
done
