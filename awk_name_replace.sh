#!/bin/bash
# Author: Cesar Altamirano
# Description: Uses awk to replace all instances of a name pattern with the provided replacement text
# Usage: ./awk_name_replace.sh <pattern> <replacement> < inputfile.txt

if [ $# -ne 2 ]; then
    echo "Usage: $0 <name-pattern> <replacement-text>" >&2
    exit 1
fi

# Store the name pattern and replacement text from command-line arguments
name_pattern=$1
replacement_text=$2

# Use awk to replace all occurrences of the name pattern with the replacement text and print the result
awk -v pat="$name_pattern" -v rep="$replacement_text" '{gsub(pat, rep); print}'
