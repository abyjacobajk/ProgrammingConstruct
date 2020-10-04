#!/bin/bash -x

x=$((1 + RANDOM%6));
y=$((1 + RANDOM%6));
z=$(($x+$y));
echo $z
