#!/bin/bash -x

isPartTime=1;
isFullTime=2;
empRatePerHour=20;
empCheck=$((RANDOM%3));

case $empCheck in
        $isFullTime)
                empHrs=16
                ;;
        $isPartTime)
                empHrs=8
                ;;
        *)
                empHrs=0
                ;;
esac
Salary=$(($empHrs*$empRatePerHour));
