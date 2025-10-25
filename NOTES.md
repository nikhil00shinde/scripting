#### Scripting

## Github
- Create a script that will check the untracked, modify files by providing output or arguments
- **Concept used:**
```bash
if [ condition]; do
fi
```
```bash
if [condition]; do 
elif [condition]; do
else 
fi
```
```
while [condition]; do
done

for i in "${!myfiles[@]}"; do
    echo "$myfiles[$i]"
done
```

```
variable="${something:-default_value}"
```
This is called parameter expansion in Bash.
It means:

“If something has a value, use it.
Otherwise, use the default_value.”

```sh
if [ -t 1 ] --- Only use colors if writing to terminal

tput setaf N --- Sets terminal color (foreground)

tput sgr0 --- Resets colors back to normal
```


