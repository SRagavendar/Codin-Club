#!/bin/bash
clear
echo -n "Enter any number to find factorial: "
read num
fact=1
while [ $num -gt 1 ]
do
        fact=$((fact * num))
        num=$((num-1))
done
echo $fact
