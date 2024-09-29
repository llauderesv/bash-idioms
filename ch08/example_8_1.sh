#!/usr/bin/env bash

# Notes:
# In our example ( ), we want to support options a, o, and v
# The leading colon tells not to report error messages but rather to leave that to our script
# The colon after the o character indicates that the o option has an argument that goes with it
# VAL is the name of the variable that will be assigned if an option is found.

# getopts ':ao:v' VAL
# echo $VAL $OPTARG

while getopts ':ao:v' VAL; do
  case $VAL in
    a ) AMODE=1 ;;
    o ) OFILE="$OPTARG" ;;
    v ) VERBOSE=1 ;;
    : ) echo "error: no arg supplied to $OPTARG option" ;;
    * )
      echo "error: unknown option $OPTARG"
      echo "  valid options are: aov"
    ;;
  esac
done
