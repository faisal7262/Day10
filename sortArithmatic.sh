#!/bin/bash -x
declare -A result

read -p " Enter 1st number  :" a
read -p " Enter 2st number  :" b
read -p " Enter 3st number  :" c

uc2=$(($a+$b*$c))

echo $uc2

uc3=$(($a*$b+$c))
echo $uc3
uc4=$(($c+$a/$b))
echo $uc4
uc5=$(( $a%$b+$c))
echo $uc5
# uc6 dictionary

counter=0;
result[((counter++))]="$uc2"
result[((counert++))]="$uc3"
result[((counter++))]="$uc4"
result[((counter++))]="$uc5"
echo ${result[@]}
# uc7 array
#for (( i=0; i<5; i++ ))
#{
#	arr[i]=${result[(($i))]}
#}
arr[((counter++))]=${result[@]}
echo ${arr[@]}
