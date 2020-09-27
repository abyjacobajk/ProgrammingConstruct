#!/bin/bash -x
empRatePerHour=20;
valid=true
count=2
while [ $valid ]
do
        echo $count
        if [ $count -eq 100 ]
        then
                break
        else
                (( count++ ))
        fi
done
totalworkinghour=$(($count))
totalSalary=$(($count*$empRatePerHour))



