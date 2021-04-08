#!/bin/bash

# 一对小括号是引用命令 $(date +%Y)
# 两对小括号是算术运算 $(( $(date +%Y) + 1 ))

echo "今年是$(date +%Y)年"
echo "明年是$(( $(date +%Y) + 1 ))年"
