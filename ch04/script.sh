#!/usr/bin/env bash

VAR="oneword"

echo ${#VAR} # Display 7

echo "usage: ${0##*/} namesfile datafile"

FN='img.1231.jpg'

echo "no file extension: ${FN%.*}"

echo "removing any trailing characters: ${FN%%.*}"

LOC='/home/guy/bin.txt'

echo "dir name: $(dirname $LOC)"
echo "file name is: ${LOC##*/}"

declare -u UPPER
UPPER="message to send"
echo ${UPPER:0:1}

## Upper case string
TXT="hello world"
echo "${TXT^^}"

## Upper case the first word
echo "${TXT^}"

## Lower case the entire sentence
echo "${TXT,,}"

FN1="my filename with spaces.txt"

echo "${FN1// /_}"

LEN=${1:-10}
echo $LEN

declare -a arr=("apple" "banana" "cherry")

# for fn in "${arr[@]}"
# do
#   S=${arr:+,}
#   echo $S
#   arr="${arr}${S}${fn}"
# done

# Join elements with the '+' separator using substitution
result="${arr[*]}"
result="${result// /,}"

echo $result

echo ${MESSAGE:="Hello World"} # Message Variable is unset hence it will used the default value 'Hello World'
