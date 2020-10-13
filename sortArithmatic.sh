#!/bin/bash -x

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

declare -A dict
count=0;
dict[((count++))]="$uc2"
dict[((count++))]="$uc3"
dict[((count++))]="$uc4"
dict[((count++))]="$uc5"
echo ${dict[@]}
