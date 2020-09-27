#!/bin/bash -x
#checking employee's salary based on part time or full time
isPartTime=1;
isFullTime=2;
empRatePerHour=20;
randomCheck=$((RANDOM%3));

if [ $isFullTime -eq $randomCheck ];
then
#full time
	empHrs=16;
elif [ $isPartTime -eq $randomCheck ];
then
#part time
	empHrs=8;
else
#employeee absent
	empHrs=0;
fi
Salary=$(($empHrs*$empRatePerHour));
#total salary
