# Chapter 01

The biggest Ifs

This should be avoided because its not readable.

```bash
[[ -n "$DIR" ]] && cd "$DIR"
```

It should be rewritten as

```bash
if [[ -n "$DIR" ]]; then
  cd "$DIR"
fi
```

The `-n` flag is a non-empty string to check whether if the string is not empty then go that body of if statement.

The `-z` flag is used to test if the string is empty, if empty then do else.

```bash
if [[ -z "$DIR" ]]; then
  :
else
  cd "$DIR"
fi
```

> [!NOTE]
> The ":" is a null statement in shell—so it does nothing in that case.

## Conclusion

Avoid using `&&` and `||` in Bash because its kinda confusing to people who will read your code.

You can write the `if/then/else` logic using those familiar words
