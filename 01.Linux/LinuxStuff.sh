## Execute command hello and ls and check its execution status and print whether command executed successful or not.
hello
echo $?
status = 127, which means non-existing command and it has not executed properly.

ls
echo $?
status = 0, which means it’s a valid command and it has executed properly.

## Set environment usersecret=dH34xJaa23 if its already not set.
#!/bin/bash
if [[ -v usersecret ]];
then
	echo "variable named usersecret is already set"
else
	echo "variable usersecret is not set"
fi
export usersecret="dH34xJaa23"
echo "variable named usersecret has been set now"
