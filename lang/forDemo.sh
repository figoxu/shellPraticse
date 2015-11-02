#!/bin/bash 

for e in {"hello","world","how","old","are","you"}; do
	echo $e
done

echo "------------test 001---------------------"
for i in {1..3};do
	echo $i
done

echo "------------test 002---------------------"

for((i=1;i<3;i++));do
	echo $i
done



# for ( i=0; i<100; i++);do
# 	echo $i
# done