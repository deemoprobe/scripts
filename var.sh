#!/bin/bash

# 变量由数字|字母|下划线组合而成,不能以数字开头
# 严格区分大小写
# 变量/等号/值之间不能有空格

var1=123
var2=456

echo $var1
echo $var2
# 字符串相加,不做值运算
echo "var1+var2=$var1+$var2"
