#!/bin/bash
year=$(date +'%Y')
echo "Current year is $year"

if [ $((year % 4)) -eq 0 ]
then
	if [ $((year % 100)) -eq 0 ]
	then
	    if [ $((year % 400)) -eq 0 ]
	    then
	        echo "its a leap year"
	    else
	        echo "its not a leap year"
	    fi
	else
		echo "Its a leap year"
	 fi
else
	echo "its not a leap year"
fi