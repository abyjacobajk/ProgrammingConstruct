#!/bin/bash -x
#hecking employee present or not
isPresent=1;
randomCheck=$((RANDOM%2));
if [ $isPresent -eq $randomCheck ]
then
	echo "Employee is Present";

else 
	echo "Employee is Absent";
fi


