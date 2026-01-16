#!/usr/bin/env bash

# only sleep will run background if we use &, 
# "wait" it will wait till the sleep command finishes it works.
#
echo "Started"
#
sleep 100 &
wait # it wait till the above command complete its works
#
next=100
ans=200
echo "Completed"
