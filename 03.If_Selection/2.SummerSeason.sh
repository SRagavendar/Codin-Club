#!/bin/bash
read -p "Enter your date : " d
read -p "Enter your month : " m
if [[ $m -ge 3 && $m -le 6 ]]
then
	if [[ $m -eq 3 && $d -lt 20 ]]
	then
		echo "False"
	elif [[ $m -eq 6 && $d -gt 20 ]]
	then
		echo "False"
	else
		echo "True"
	fi
else
	echo "False"
fi