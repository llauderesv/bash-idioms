#!/usr/bin/env bash

[[ -n "$DIR" ]] && cd "$DIR" # -> This should be avoided...

if [[ -n "$DIR" ]]; then
  cd "$DIR"
fi

[[ -z "$DIR" ]] || cd "$DIR" # -> This should be avoided...

if [[ -z "$DIR" ]]; then
  :
else
  cd "$DIR"
fi
