#!/bin/bash
Num1=$((5+1))
Num2=$((5+1))
A=$((1 + RANDOM%$Num1))
echo "First randomly generated dice number is " $A
B=$((1 + RANDOM%$Num2))
echo "Second randomly generated dice number is " $B
C=$(( A + B ))
echo "Addition of $A and $B is $C"