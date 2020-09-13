## Create files in current directory or any temporary directory :
touch file1.txt file2.txt file3.txt file4.txt

## Print list of files to move
ls -l
printf '%s\n' * > output.txt

##Segregate basename and extension of a file
nano filesegregator.sh
#!/bin/bash
fullfilename="/c/Users/Potats-PC/TerminalCommands/temp1/file1.txt"
filename=$(basename "$fullfilename")
fname="${filename%.*}"
ext="${filename##*.}"
echo "Input File: $fullfilename"
echo "Filename without Path: $filename"
echo "Filename without Extension: $fname"
echo "File Extension without Name: $ext"

## Create a folder using basename and move file into newly created folder
nano foldermaker.sh
#!/bin/bash
for f in file1
do
	d=$(echo $f | sed 's/file\([0-9]*\).*/file\1/')
	[ -d $d ] || mkdir $d
	mv $f $d
	echo "$f moved to $d"
done

## Iterate above steps for all files
#!/bin/bash
for f in file
do
	d=$(echo $f | sed 's/file\([0-9]*\).*/file\1/')
	[ -d $d ] || mkdir $d
	mv $f $d
	echo "$f moved to $d"
done
