#! /bin/bash -x

declare -A sum

read -p "enter 1st number" a
read -p "enter 2nd number" b
read -p "enter 3rd number" c
sum[add]=$(( (a+b)*c ))
sum[mul]=$(( (a*b)+c ))
sum[div]=$(( (c+a)/b ))
sum[mod]=$(( (a%b)+c ))
echo ${sum[@]}




