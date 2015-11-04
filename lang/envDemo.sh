#!/bin/bash

process=java
a=`ps -ef|grep $process| awk '{print $2}'`

# for pid in $a;do
# 	echo -e "\e[1;31m ====================================================== \e[0m"
# 	cat /proc/$pid/environ | tr '\0' '\n'
# 	echo -e "\e[1;31m ====================================================== \e[0m"
# done



checkSuperUser(){
    echo uid is $UID
    if [ $UID -ne 0 ]; then
    	echo "current user is not ROOT"
    else
    	echo "current user is ROOT"
    fi
}

checkSuperUser