
#! /bin/bash -x

declare -A sum
declare -a array

read -p "enter 1st number" a
read -p "enter 2nd number" b
read -p "enter 3rd number" c
sum[add]=$(( (a+b)*c ))
sum[mul]=$(( (a*b)+c ))
sum[div]=$(( (c+a)/b ))
sum[mod]=$(( (a%b)+c ))
echo ${sum[@]}
i=0
for key in ${!sum[@]}
do
	array[$i]=${sum[$key]}
	i=$(( i+1 ))
done

for ((i=0; i<${#array[@]}; i++))
do
	for((j = 0; j<${#array[@]}-i-1; j++))
	do
        	if [ ${array[j]} -lt ${array[$j+1]} ]
        	then
			temp=${array[j]}
            		array[$j]=${array[$j+1]}
            		array[$j+1]=$temp
        	fi
    	done
done
echo
echo ${array[@]}

for ((i=0; i<${#array[@]}; i++))
do
	for((j = 0; j<${#array[@]}-i-1; j++))
	do
        	if [ ${array[j]} -gt ${array[$j+1]} ]
        	then
			temp=${array[j]}
            		array[$j]=${array[$j+1]}
            		array[$j+1]=$temp
        	fi
    	done
done
echo
echo ${array[@]}



