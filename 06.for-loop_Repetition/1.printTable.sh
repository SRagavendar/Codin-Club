#!/bin/bash
clear
echo "Type any number to generate power of 2 table"
read number
i=1
while [ $i -le $number ]
do
	echo " 2 * $i =`expr 2 \* $i` "
	i=`expr $i + 1`
done
