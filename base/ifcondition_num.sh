#!/bin/bash

# if condition
# 数值比较,仅限整数值比较,小数比较可以使用字符串比较方式(参见:ifcondition_str.sh)
# 代码
# n1 -eq n2
# n1 -ne n2
# n1 -gt n2
# n1 -ge n2
# n1 -lt n2
# n1 -le n2

if [ $1 -eq $2 ];then
    echo "$1 = $2"
elif [ $1 -gt $2 ];then
    echo "$1 > $2"
else
    echo "$1 < $2"
fi

