#!/usr/bin/env bash

message="Hello World"
len=${#message}
# Variables don't need the dollar sign reference in front of them when they are used inside of double parens.

# echo $max
if (( len > 5 )); then
  echo 'Too long'
else 
  echo 'Yeah'
fi