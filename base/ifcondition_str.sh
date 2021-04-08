#!/bin/bash

# if condition
# 字符串比较,也可以用于小数的比较
# 大小比较时小于号大于号需要转义
# 代码
# str1 = str2
# str1 != str2
# str1 > str2
# str1 < str2
# -n str1 长度不为0为true
# -z str1 长度为0为true

#var1="hello"
#var2="world"

var1=0.1
var2=0.02

if [ $var1 = $var2 ];then
    echo "字符串相同"
# 大于号需要转义一下,否则会作为重定向处理
elif [ $var1 \> $var2 ];then
    echo "$var1 > $var2"
else
    echo "$var1 < $var2"
fi

# 判断非空
if [ -n $var1 ];then
   echo "var1=$var1,not null."
else
   echo "var1 is null."
fi

# 判断空
if [ -z $var ];then
    echo "var is null."
else
    echo "var=$var,not null."
fi
