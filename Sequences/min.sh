#!/bin/bash -x
n=5
i=1
max=0

while [ $i -le $N ]
do
  x=$((10 + RANDOM%10));
  if [ $i -eq 1 ]  
  then
      max=$x
  else             
      if [ $x -gt $max ]
      then
        max=$x
      fi
  fi
  i=$((i + 1))  
done

echo $max
