#!/bin/bash

# 位置变量
# $n 第n个变量
# $@ 所有变量参数,每个参数视为个体
# $* 所有变量参数,所有参数视为一个整体
# $# 参数个数

echo "First para is $1"
echo "Second para is $2"
echo "Third para is $3"
echo "Fourth para is $4"

echo "输入的参数为:$*"
echo "输入的参数为:$@"
echo "输入的参数个数为:$#个"
