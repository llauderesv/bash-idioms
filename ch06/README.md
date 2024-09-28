# Chapter 06

Functions can be called from various locations within a bash shell script.

## Calling Functions

```bash
Do_Something
Find_File 25 $MPATH $ECODE
Show_All $*
```

## Defining Functions

```bash
function Helper ()
function Helper
Helper ()
```

All three are equivalent, the reserved word `function` is optional.

We prefer to use simple two word version: `function` and then the name of our function. Not only does it clearly state what we're doing, but it reminds us that unlike other languages parameters are not put in parenthesis. And it's quite easy to `grep` for.

```bash
function Say_So {
  echo 'Hello World'
}
```

## Function Parameters

Bash does not define a function parameters, when you call a bash function you can supply as many parameters as you want. They're passed inside your Bash function using the variable `$1, $2, $3` and so forth.

> [!IMPORTANT]
> Since these parameters don't have names but only their order number, it is a very good idea to put a comment at the head of the function to document what parameters the function expects and in what order.

The `$0` inside the function body when you call it still holds the name of the script, but if you want to call the name of the function, you can use the `$FUNCNAME`

## Function Return Values

The return value from bash functions is really just an exit status, the value that you can check using `$?` after calling the function.

> [!NOTE]
> The return value of `$?` is zero or one. Zero means success and One means error in the function call.

You can get the return value of function call using the `$( )` and assign it to a variable.

## Style and Readability: Recap

Functions in bash are very much like internal shell scripts. Their invocation is very much like running any command, and their parameters are referenced
like any shell script’s parameters ( , , etc.) You will need to put your functions at the front of the script so that their definition is seen before any call to the function. As in any language, functions should be kept short and be largely single-purpose
