#!/bin/bash -x
#checking employess wage
#rate per hour is 20
isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ] ;
then

	empRatePerHr=20;
	empHr=8;
	Salary=$(($empHr * $empRatePerHr));

else
	Salary=0;
fi

