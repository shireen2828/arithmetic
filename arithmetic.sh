
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
echo ${array[@]}




