#!/bin/bash -x

x=$((RANDOM%6));
y=$((RANDOM%6));
z=$(($x+$y));
echo $z
