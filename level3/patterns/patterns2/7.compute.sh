#!/bin/bash 

# Arbitrary Precision Calculator (uses bc)

if [[ $# -lt 1 ]]; then
    printf " ? ? ? usage: %s [-p precision] \"expression-to-compute\" \n" "$0"
    exit 1
fi

# Parse optional -p flag
if [[ "$1" == "-p" ]]; then
    precision=$2
    shift 2
else
    precision=2     # default
fi

bc -q -l <<EOF
scale=${precision}
print "$* = "
$*
quit
EOF

exit

