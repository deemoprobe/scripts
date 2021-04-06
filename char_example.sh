#!/bin/bash

string="Golang is the best language in the world,many apps are based on Golang."

function user_display
{
	echo "**********************************"
	echo "(1)打印字符串长度"
	echo "(2)删除字符串中所有的Golang"
	echo "(3)替换第一个Golang字符串为Java"
	echo "(4)替换所有的Golang字符串为Java"
	echo "**********************************"
}

function char_len
{
	echo "${#string}"
}

function del_Golang
{
	echo "${string#Golang}"
}

function rep_GolangtoJava_first
{
	echo "${string/Golang/Java}"
}

function rep_GolangtoJava_all
{
	echo "${string//Golang/Java}"
}

while true
do
	echo "[string=$string]"
	echo

	user_display

	read -p "Pls input your choice (1|2|3|4|q|Q): " choice
	
	case $choice in
		1)
			char_len
			;;
		2)
			del_Golang
			;;
		3)
			rep_GolangtoJava_first
			;;
		4)
			rep_GolangtoJava_all
			;;
		q|Q)
			exit
			;;
		*)
			echo "Error Input, Pls input your choice (1|2|3|4|q|Q)"
			;;
	esac
done
