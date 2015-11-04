#!/bin/bash 

echo -e "\e[1;31m math demo of 'let' \e[0m"
x=1999 
let "x = $x + 1" 
echo $x
let "x = $x + 100"
echo $x
let "x +=1"
echo $x
let "x -=1"
echo $x
let x-=1
echo $x
let x+=1
echo $x
let x=x+99
echo $x
x="olympic'"$x 
echo $x