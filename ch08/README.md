# Chapter 08

Arguing

## Your First Argument

Using the `$1` isn't a best practice because the reader of your code is having a hard time to understand the context of it.

You can name your argument by using this `filename=${1:-favorite.txt}`

```bash
filename=${1:-favorite.txt}
```

> [!IMPORTANT]
> Your script can check to make sure that the user has supplied the correct number of arguments by checking the `$#` variable. It holds the number of arguments.

```bash
if (( $# != 2 )); then
  echo "usage: $0 file1 file2"
  exit
fi
```

## Parsing Options

Use the `getopts` builtin command to parse the options to your shell script. It is called repeatedly (usually via `while` loop) until all the options have been found.

The `getopts` command is used to parse the options in your shell script.

For example:

When you code like this, it looks the `-a -o -v` options in your shell script and assign the string value to VAL variable

```bash
# Notes:
# In our example ( ), we want to support options a, o, and v
# The leading colon tells not to report error messages but rather to leave that to our script
# The colon after the o character indicates that the o option has an argument that goes with it
# VAL is the name of the variable that will be assigned if an option is found.

getopts ':ao:v' VAL

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
```

## Long Arguments

For some folks, a single letter isn't enough. They want full words or even phrases to describe the option they are invoking. The builtin supports these, too.
