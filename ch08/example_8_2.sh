#!/usr/bin/env bash

PROGRAM=${0##*/}
VERSION="$PROGRAM v1.2.3"

VERBOSE=':'
DEBUG=':'

function Display_Help {
  cat <<-EoN
    This script does nothing but show help; a real script should be more exciting.
    usage: $PROGRAM (options)

    Options:
        -a | --amode   = Enable "amode", default is off
        -d | --debug   = Include debug output, default is off
        -h | --help    = Show this help message and exit
        -o | --outfile = Send output to file instead of STDOUT
        -v | --verbose = Include verbose output, default is off
        -V | --version = Show the version and exit

    You can put more detail here if you need to
EoN
}

while getopts ':-:adho:vV' VAL; do
  case $VAL in
  a) AMODE=1 ;;
  d) DEBUG='echo' ;;
  h)
    Display_Help
    exit 1
    ;;
  o) OFILE="$OPTARG" ;;
  v) VERBOSE="echo" ;;
  V) echo "$VERSION" && exit 0 ;;
  -)
    case $OPTARG in
    amode) AMODE-1 ;;
    debug) DEBUG='echo' ;;
    help)
      Display_Help
      exit 1
      ;;
    outfile=*) OFILE="${OPTARG#*=}" ;;
    outfile)
      OFILE="${!OPTIND}"
      let OPTIND++
      ;;
    verbose) VERBOSE='echo' ;;
    version)
      echo "$VERSION"
      exit 0
      ;;
    *)
      echo "unknown long argument: $OPTARG"
      exit
      ;;
    esac
    ;;
  :) echo "error: no argument supplied" ;;
  *)
    echo "error unknown option $OPTARG"
    echo "    valid options are: aov"
    ;;
  esac
done
shift $((OPTIND - 1))

echo "Code for $0 goes here."

$VERBOSE 'Example verbose message...'
$DEBUG 'Example DEBUG message...'

echo "End of $PROGRAM run."
