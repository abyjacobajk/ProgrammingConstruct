#!/bin/bash -x

c=head
d=tail
counter=1
for (( i=0; i<5; i++ ))
do 
  x=$((RANDOM%2));
  if [[ $x = 1 ]]
  then
	a=head
  else
	a=tail
  fi
b[((counter++))]="$a"
  
done
 if [ $c -gt $d ]
  then
        max=$c min=$d
  else
        max=$d min=$c
  fi

echo  ${b[@]}
echo "maximum occurence is $max and minimum is $min"  
