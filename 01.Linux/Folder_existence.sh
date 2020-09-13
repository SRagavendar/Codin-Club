#!/bin/bash
if [ -d "Directory to check folder exists or not" ]
then
	echo "Directory exists. "
else
	echo "Error, Directory does not exist"
	mkdir Directory Name
	echo "Directory Created"
fi
