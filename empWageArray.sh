#!/bin/bash -x

# CONSTANT FOR THE PROGRAM
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIBLES
totalempHrs=0;
totalWorkingDays=0;


function getWorkHrs( ) {
        local empCheck=$1
        case $empCheck in
                $IS_FULL_TIME)
                        empHrs=16
                        ;;
                $IS_PART_TIME)
                        empHrs=8
                        ;;
                *)
                        empHrs=0
                        ;;
        esac
        echo $empHrs
}

function getEmpWage() {
	local empHr=$1
	echo $(($empHr*$EMP_RATE_PER_HR))
}

while [[ $totalempHrs -lt $MAX_HRS_IN_MONTH &&
         $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        empHrs="$( getWorkHrs $empCheck )"
 	  	  totalempHrs=$(($totalempHrs+$empHrs))
		  dailyWage[$totalWorkingDays]=$( getEmpWage $empHrs )
done

totalSalary=$(( $totalempHrs*$EMP_RATE_PER_HR));
echo  ${dailyWage[@]}


