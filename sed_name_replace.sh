#!/bin/bash
# Author: Cesar Altamirano
# Description: Uses sed to replace all instances of a name pattern with the provided replacement text
# Usage: ./sed_name_replace.sh <pattern> <replacement> < inputfile.txt
if [ $# -ne 2 ]; then
    echo "Usage: $0 <name-pattern> <replacement-text>" >&2
    exit 1
fi
# Store the name pattern and replacement text from command-line arguments
name_pattern=$1
replacement_text=$2
# Use sed to replace all occurrences of the name pattern with the replacement text and print the result
sed "s/$name_pattern/$replacement_text/g"
