#!/bin/bash -x
clear
read -p "Enter number to check palindrome : " n
digit_s=0
reverse=""
orig=$n
while [ $n -gt 0 ]
do
    digit_s=$(( $n % 10 ))
    n=$(( $n / 10 ))
    reverse=$( echo ${reverse}${digit_s} )
done
if [ $orig -eq $reverse ]
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi
