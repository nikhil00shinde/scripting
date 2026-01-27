#!/usr/bin/env bash

x=mississipi
grep -o "s" <<< "$x" | wc -l


# File input → <
# Scripted multi-line input → <<
# Quick string testing → <<<
#
# < reads files
# << writes paragraphs
# <<< whispers a word

