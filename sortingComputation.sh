#! /bin/bash -x
read -p "Enter a" a
read -p "Enter b" b
read -p "Enter c" c
res1=$(($a + ($b * $c)))
res2=$((($a * $b) + $c))
