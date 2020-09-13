#!/bin/bash
mkdir {original,updated}
cd original; nano original-file.sh
cd ..; cd updated; nano updated-file.sh

a=$(diff /c/Users/Potats-PC/TerminalCommands/trial/original/original-file.sh /c/Users/Potats-PC/TerminalCommands/trial/updated/updated-file.sh)
echo "The changes are as follows\n$a"
cp -r /original /original_backup
echo "Backup of the original file has been created named 'Original_backup'"
b=$(cp -v /c/Users/Potats-PC/TerminalCommands/trial/updated/updated-file.sh /c/Users/Potats-PC/TerminalCommands/trial/original/original-file.sh
echo $b "The original file has been modified according to the updated file"
cmp --silent /c/Users/Potats-PC/TerminalCommands/trial/original/original-file.sh /c/Users/Potats-PC/TerminalCommands/trial/updated/updated-file.sh && echo 'SUCCESS!: Files Are Identical!' || echo 'ERROR!: Files Are Different!'
