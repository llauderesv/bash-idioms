# Chapter 5

## Arithmetic

You use a dollar sign follow by double parens `$((  ))` to execute and run arithmetic operations in bash

Example:

```bash
message="Hello World"
len=${#message}
# Variables don't need the dollar sign reference in front of them when they are used inside of double parens.
max=$(( len + 1 )) 
echo $max
```

### Declaring integer variable in Bash

```bash
declare -i SEE
X=9
Y=3
SEE=X+Y
```

## Single and Double Brackets in Bash

There's no major difference in using both these command `[ ]` and `[[ ]]`.

They work the same way but it's kind a prefer more of a stylistic.

```bash
if [[ $VAR == "literal" ]]; then ...

if [ $VAR = "literal ]; then ...
```

If work with other programming languages, you prefer to use the first one because you might have familiar with the double equal sign which used as a comparing values.

> [!NOTE]
> If you're doing an arithmetic expression inside if, you could just use the double parens instead of using a single or double brackets. You could have more flexibility with the expression in Bash.
>
> ```bash
> message="Hello World"
> len=${#message}
> if (( len > 5 )); then
>   echo 'Too long'
> else
>   echo 'Yeah'
> fi
>
> ```

## Conclusions

For conditionals, the newer syntax of is much preferred over . However,
if your conditional is arithmetic comparisons, an even better choice is the syntax.
add
