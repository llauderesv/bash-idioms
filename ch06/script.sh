#!/usr/bin/env bash
# Set a global variable today
printf -v today '%(%F)T' ''-1

function Say_So {
  # echo $0 # This will return the name of the script
  echo $FUNCNAME # This will return the function name
  echo 'Hello World'
}

function Log {
  printf "[$today] - $1"
}

hello=$(Say_So)

Log "Hello Pussy"