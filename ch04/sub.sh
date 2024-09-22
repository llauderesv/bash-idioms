#!/usr/bin/env bash

# for arg in $(cat ./ch04/script.sh); do
#   echo $arg
# done

# for arg in $(< ./ch04/script.sh); do # Faster than shelling out to cat
#   echo $arg
# done

output=$(./ch04/script.sh)

echo "Running the Chapter 04 script.sh and assign the output to a variable:"
echo $output
