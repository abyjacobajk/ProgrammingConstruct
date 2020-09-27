#!/bin/bash -x

#Constants
EMPLOYEE_RATE_PER_HOUR=100;
MAX_WORKING_DAYS=2;
MAX_WORKING_HOURS=100;

#Variables
declare -i workDonePerDay
totalWorkingDays=0;
totalWorkingHours=0;

function getWorkHours() {
	case $1 in 
		1) workHours=4;;
		2) workHours=8;;
		*) workHours=0;;
	esac
	echo $workHours;
}

while [[ $totalWorkingHours -lt $MAX_WORKING_HOURS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	resWorkDonePerDay=$( getWorkHours $((RANDOM%3)) );

	#adding up total working hours
	totalWorkingHours=$(( totalWorkingHours + resWorkDonePerDay ));
	#getting store per day work hours in Dictionary
	workDonePerDay[$totalWorkingDays]=$resWorkDonePerDay;
done

echo "Total working Hours : " $totalWorkingHours
echo "Dic : " ${workDonePerDay[@]}
