#!/usr/bin/env bash
declare -a mylist
mylist=(foo var baz one two "three four")

range=${#mylist[@]} # get the size of the array.
random=$(($RANDOM % $range))

echo "range = $range, random = $random, choice = ${mylist[$random]}"
