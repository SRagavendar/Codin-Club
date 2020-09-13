#!/bin/bash
echo "Enter any measurement number, choice is coming up"
read a
echo "Enter your choice of conversion: "
echo "1. Feet to Inch"
echo "2. Feet to Metre"
echo "3. Inch to Feet"
echo "4. Metre to Feet"
read c
case $c in
1)res=`echo "scale=2; $a * 12" | bc` ;;
2)res=`echo "scale=2; $a / 3.281" | bc` ;;
3)res=`echo "scale=2; $a / 12" | bc` ;;
4)res=`echo "scale=2; $a * 3.281" | bc` ;;
esac
echo "Conversion of $a based on $c is : $res"