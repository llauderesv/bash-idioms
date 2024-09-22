#!/usr/bin/env bash

VERSION='v1.2b'

function Usage_Exit {
  echo "$0 [color|last|len|long]"
  exit
}

function Ls-Length {
  ls -1 "$0" | while read fn; do
    printf '%3d %s\n' ${#fn} ${fn}
  done | sort -n
}

(( $# < 1 )) && Usage_Exit
sub=$1
shift

case $sub in
  color)
    ls -N --color=tty -T 0 "$@" # Colorized ls
  ;;
  last | latest)
    ls -lrt | tail "-n${1:-5}" # Latest files
  ;;
  len*)
    Ls-Length "$@"            # Files with name lengths
  ;;
  long)
    Ls-Length "$@" | tail -1 # File with longest name
  ;;
  *)
    echo "unknown command: $sub" # Default
    Usage_Exit
  ;;
esac
