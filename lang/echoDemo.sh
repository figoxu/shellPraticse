#!/bin/bash

#echo -e '包含转义字符的字符串'
echo -e "1\t2\t3"


# e[1;31 将颜色设为红色  \e[0m 将颜色重新置回
echo -e "\e[1;31m This is red text \e[0m"
echo -e "\e[1;33m Figo how are you \e[0m"