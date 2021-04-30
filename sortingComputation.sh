#! /bin/bash -x
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c

res[1]=$(($a + ($b * $c)))
res[2]=$((($a * $b) + $c))
res[3]=$(($c + ($a / $b) ))
res[4]=$((($a % $b) + $c))

declare -A arr

for((i=1;i<=4;i++))
do
	for((j=1;j<=1;j++))
	do
		arr["$i"]=${res[$i]}
	done
done
echo "Dictionary"
for i in ${!arr[@]}
do
    echo "$i ${arr[${i}]}"

done

declare -a arr2
for((i=1;i<=4;i++))
do
	arr2["$i"]=${arr[${i}]}
done
echo "Dictionary to Array:"
echo "${arr2[*]}"


for ((i = 0; i<5; i++))
do

    for((j = 0; j<5-i-1; j++))
    do
        if [ ${arr2[j]} -gt ${arr2[$((j+1))]} ]
        then
            # swap
            temp=${arr2[j]}
            arr2[$j]=${arr2[$((j+1))]}
            arr2[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted in ascending order :"
echo ${arr2[*]}

