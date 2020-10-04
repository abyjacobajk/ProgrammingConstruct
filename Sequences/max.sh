#1/bin/bash -x
max=0
for (( i=0; i<5; i++ ))
do
  x=$((100 + RANDOM%10));
  echo $x;
  min=$x;
  if [ $x -gt $max ]
  then
	max=$x
  else
	max=$max
  fi
  if [ $x -lt $min ]
  then
	min=$x
  else
	min=$min
  fi
done
echo maximum among 5 numbers is $max and minimum is $min
