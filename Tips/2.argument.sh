#!/usr/bin/env bash

# ./2.argument.sh js "foo  bar"  "hello   world"

# BAD
# for arg in $*; do
#   echo "<$arg>"
# done
# STILL SAME RESULT - $@, "$*"


# GOOD
for arg in "$@"; do
  echo "<$arg>"
done

diff 