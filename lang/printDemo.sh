#!/bin/bash



AAA="hello"
BBB="asdasf"
CCC="asdfasfsdf"
printf "align right \n\n"
printf "%20s%20s%20s\n" "$AAA" "$BBB" "$CCC"
printf "%20s%20s%20s\n" "$BBB" "$AAA" "$CCC"
printf "%20s%20s%20s\n" "$AAA" "$CCC" "$BBB"



printf "\n align left \n\n"

printf "%-20s%-20s%-20s\n" "$AAA" "$BBB" "$CCC"
printf "%-20s%-20s%-20s\n" "$BBB" "$AAA" "$CCC"
printf "%-20s%-20s%-20s\n" "$AAA" "$CCC" "$BBB"

printf "\n some bad format in chinese \n\n"
AAA="hello"
BBB="中文的"
CCC="asdfasfsdf"
printf "%20s%20s%20s\n" "$AAA" "$BBB" "$CCC"
printf "%20s%20s%20s\n" "$BBB" "$AAA" "$CCC"
printf "%20s%20s%20s\n" "$AAA" "$CCC" "$BBB"



# format-string为双引号
printf "%d  %s \n"  2015 "hello"

# 没有引号也可以输出
printf %s abcdef


# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def
# abcdef
printf "%s\n" abc def
# abc
# def
printf "%s %s %s\n" a b c d e f g h i j
# a b c
# d e f
# g h i
# j

# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n" 
# and 0

# 如果以 %d 的格式来显示字符串，那么会有警告，提示无效的数字，此时默认置为 0
printf "The first program always prints'%s,%d\n'" Hello Shell
# -bash: printf: Shell: invalid number
# The first program always prints 'Hello,0'


# 根据POSIX标准，浮点格式%e、%E、%f、%g与%G是“不需要被支持”