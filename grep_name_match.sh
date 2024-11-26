#!/bin/bash
# Author: Cesar Altamirano
# Description: Uses grep to find lines that match a given name pattern from the input file or stdin
# Usage: ./grep_name_match.sh <pattern> < inputfile.txt

if [ $# -ne 1 ]; then
    echo "Usage: $0 <name-pattern>" >&2
    exit 1
fi

# Store the name pattern from command-line argument
name_pattern=$1

# Use grep to find and print all lines that contain the name pattern
grep "$name_pattern"
