#!/bin/bash -x
#declare -A result

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
result[uc2]="$uc2"
result[uc3]="$uc3"
result[uc4]="$uc4"
result[uc5]="$uc5"
echo ${result[@]}
# uc7 array
for i in "${result[@]}"
do
	nos[i]=$i

done
#	echo "data in array : " ${nos[@]}
#uc8
n=${#nos[@]}
#printing the number before sorting
echo "  Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
echo ${nos[$i]}
done
# Now do the Sorting of numbers
for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${nos[$i]} -lt ${nos[$j]}  ]; then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done
# Printing the sorted number in descending order
echo -e "\nSorted Numbers "
for (( i=0; i < $n; i++ ))
do
echo ${nos[$i]}
done

# ascending order

echo ${nos[@]}
