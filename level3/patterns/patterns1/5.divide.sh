#!/usr/bin/env bash

num=$1

for i in $(seq 0 $num)
do
 div=$((i/10))
 echo "        $i divide by 10 = $div"
done

