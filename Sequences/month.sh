#1/bin/bash -x
read -p "enter the month:" m
read -p "enetr the date:" n
if [[ $m -eq 0 ]]
then
  echo yes
else
  echo no
fi
