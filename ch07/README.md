# Chapter 07

List and Hash handling

## Lists

Are variables containing multiple elements that are indexed or referred to by an integer.

```bash
declare -a, local -a, readonly -a

mylist[0]=foo
mylist=() # (empty list)
# Adding item to a list
mylist+=(bar)

for element in "${!mylist[@]}"; do
  echo -e "\tElement: $element; value: ${mylist[$element]}"
done
```

## Hashes

Where the index is an arbitrary string instead of an integer. They are amazingly handy for counting or uniqueing.

Declared as:

```bash
declare -A, local -A, readonly -A

# Example:
declare -A myhash

myhash[a]='foo'
myhash[b]='bar'
myhash[c]='baz'

# Iterate over the keys and values
for key in "${!myhash[@]}"; do
  echo -e "\tKey: $key; value: ${myhash[$key]}"
done
```

## Conclusion

> [!IMPORTANT]
> Just remember, you almost always want `[@]` and not `[*]`
