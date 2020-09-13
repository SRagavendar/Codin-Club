#!/bin/bash -x
clear
echo "Enter your desired degree conversion ->"
echo "1.Conversion from Celsius to Fahrenheit"
echo "2.Conversion from Fahrenheit to Celsius"
read -p "NOW SELECT FAST, I HAVEN'T GOT ALL DAY: " ch
if [ $ch -eq 1 ]
then
        read -p "Enter celsius temperature : " c
        if [[ $c -ge 0 && $c -le 100 ]]
        then
                res_f=$(echo "scale=2;($c * (9/5)) + 32" | bc)
                echo "Conversion from $deg C is $res_f F"
        else
                echo "Please input a number between 0-100"
                exit 0
        fi
elif [ $ch -eq 2 ]
then
        read -p "Enter fahrenheit temperature : " f
        if [[ $f -ge 32 && $f -le 212 ]]
        then
                res_c=$(echo "scale=2;($f-32)*(5/9)" | bc)
                echo "Conversion from $deg F is $res_c C"
        else
                echo "Please input a number between 32-212"
                exit 0
        fi
else
        echo "Please select 1 or 2, I did not give any other options"
        exit 1
fi