#!/bin/bash -x

read -p " Enter 1st number  :" a
read -p " Enter 2st number  :" b
read -p " Enter 3st number  :" c

z=$(($a+$b*$c))

echo $z

echo $(($a*$b+$c))

echo  $(($c+$a/$b))

echo $(( $a%$b+$c))
