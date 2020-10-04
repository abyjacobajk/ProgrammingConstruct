#!/bin/bash -x

x=$((10 + RANDOM%10));
y=$((10 + RANDOM%10));
c=$((10 + RANDOM%10));
b=$((10 + RANDOM%10));
a=$((10 + RANDOM%10));

sum=$(($x+$y+$a+$b+$c));
avg=$(($sum/5));
echo the sum is $sum and average is $avg




