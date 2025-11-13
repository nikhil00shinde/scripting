#!/usr/bin/env bash

#man echo
type echo 
which echo # where it is my filesystem


/bin/echo -e hello world

echo -e hello world # will use shell builtin echo 

type -a echo # Shell prefer shell builtin over whats on the filesystem


# HOW TO CHECK EVERY BUILTIN COMMAND
help
help echo

