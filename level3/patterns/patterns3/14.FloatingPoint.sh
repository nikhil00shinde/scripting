#!/bin/bash

precision=6
for expr in "22/7" "sqrt(2)" "e(1)" "4*a(1)"; do
    result=$(echo "scale=${precision}; ${expr}" | bc -l)
    echo "  $expr = $result"
done