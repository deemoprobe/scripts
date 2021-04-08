#!/bin/bash

# 双括号中的运算
# 1.双小括号:
# 变量引用$符号可加可不加
# 运算符前后空格可有可无
# 可用于if/for/while中
# 多个运算符间用逗号间隔
# if (( expression ))
# then
#   commands
# fi

# 2.双方括号
# 变量名必须加$
# 方括号内容左右两边空格必须要有

# if [[ expression ]]
# then
#   commands
# fi

# 运算符
# value++ 后增
# value-- 后减
# ++value 先增
# --value 先减
# !	  取反
# ==	  等于
# >	  大于
# <	  小于
# >=	  大于等于
# <=	  小于等于
# &&	  逻辑与
# ||	  逻辑或

a=10
(( b=a++,c=a+10 ))
echo "a=$a,b=$b,c=$c"

#if (( $1 > $2 && $3 > $4 ));then
#    echo "\$1 > \$2 && \$3 > \$4"
#else
#    echo "Try again."
#fi

# 上面的if语句相当于
# if [ $1 > $2 ] && [ $3 > $4 ];then

d=$1
e=$2
f=$3

if [[ $d > $e && $e > $f ]];then
    echo "yes"
else
    echo "no"
fi

