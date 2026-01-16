#!/usr/bin/env bash

set -x # print all the command which are being used
set -e # if anywhere in the script if the error came it stop there.


name="John"
age=25

echo "Name is $name"
echo "Age is $age"

result=$(( age * 2 ))
echo "Result is $result"


# Now we will introduce the intentional error to demonstrate set -e 
ls /nofolder

echo "Script completed."
