#!/bin/bash -x

read -p " Enter 1st number  :" a
read -p " Enter 2st number  :" b
read -p " Enter 3st number  :" c

z=$(($a+$b*$c))
echo $z
