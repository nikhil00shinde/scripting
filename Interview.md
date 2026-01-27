### Interview Question

#### List some of the commonly used shell commands
- debugging: `top, sar`
- Try to say command you know.

#### List all the process
- `ps -ef` 
- Only print process id: `ps -ef | awk -F" " '{ print $2 }'`


#### Write a script to print only errors from a remote log
We can achieve this by using curl, grep, pipe
```sh
curl <url-of-the-file> | grep -i "HREF" 
```

####  Write a shell script to print numbers divided by 3 & 5 and not 15
- Print the odd numbers
- Print the prime numbers
```
for (( i=1; i<=ed; i++))

`expr $i % 5 == 0` 

seq 1 100
```


#### Write a script to print number of "S" in mississipe
| Symbol | Name | Input comes from |
| --------------- | --------------- | --------------- |
| `<` | Input redirection | file |
| `<<` | here document | multi-line text |
| `<<<` | here string | single string |

```
grep -o "s" <<< "mississipe"
```


### How will you debug the shell script?
`set -x`

### What is crontab in linux? Can you provide an example of usage ?
`crontab --> Linux admin`
`report --> node health`


### How to open a read-only file?
`vim -r test.txt`

### What is the difference between soft and hard link?
- Create a file and save a file (Memory)
- re-use the file multiple times (cp (copy)) --> create a hardlink 
- Softlink: Both of them are referencing the same point in the memory. `python3 ---> python`

### What are some disadvantages of shell scripting?
- Errors are frequent and costly, and a single error can alter the command.
- The execution speed is slow.
- Bugs or inadequacies in the language's syntax or implementation.
- Large, complext tasks aren't well suited to it.
- Contrary to other scripting languages, etc, it provides a minimal data structure.
- Every time a shell command is executed, a new process is launched.

`set -u` --> to make compiler exit if you encounter error

### Is bash dynamic or statically typed and why?
- It is dynamically typed.
```
x=5 
x="string"
```

### Explain about a network troubleshooting utility?
`traceroute`
`tracepath`

### How will you sort list of names in a file?
Use `sort` command

### How will you manage logs of a system that generate huge log files everyday?
- Log rotate --> after a day zip (gzip, zip) --> after 30 days delete it.
