#!/usr/bin/env bash

# declare -a, local -a, readonly -a
declare -a mylist

mylist[0]=foo
# mylist=() # (empty list)
# Adding item to a list just like a push command.
mylist+=("bar")
mylist+=("baz")

for element in "${!mylist[@]}"; do
  echo -e "\tElement: $element; value: ${mylist[$element]}"
done



declare -A myhash

myhash[a]='foo'
myhash[b]='bar'
myhash[c]='baz'

# Iterate over the keys and values
for key in "${!myhash[@]}"; do
  echo -e "\tKey: $key; value: ${myhash[$key]}"
done