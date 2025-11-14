#!/usr/bin/env bash

for c in 90 31 91 32 33 34 35 95 36 97; do
	echo -en "\r \e[${c}m Love \e[0m "
	sleep 1
done


# `\e[` means: Terminal I am about to send you a special command.
# \e[ PARAMETERS COMMAND
# \e[ ----- Start Command
# 31 ------ red color
# m ------- format text using this code



   # ESC → “pay attention”

   # [ → “starting a command”

   # 31 → “use red”

   # m → “apply color to text”
