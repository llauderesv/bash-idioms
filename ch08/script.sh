#!/usr/bin/env bash

filename=${1:-favorite.txt}

# Get the options passed in the CLI
getopts ':ao:v' VAL
echo $VAL

# Check if the script was executed with the right number of arguments
# if (($# != 3)); then
#   echo "usage: $0 file1 file2"
#   exit
# fi

# echo $filename
