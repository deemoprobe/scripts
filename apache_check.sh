#!/bin/bash
# @Author: deemoprobe@gmail.com
# @Date:   2020-09-28 09:08:12
# @Last Modified by:   deemoprobe@gmail.com
# @Last Modified time: 2020-10-14 16:26:34

##### 排查查找路径 #####
u="/tmp"

##### Apache安全规范检查主体 #####
APACHEFUNC()
{
    APACHE_DIR=`find / \( -path $u \) -prune -o -name 'httpd.conf' 2>/dev/null | grep -v original | grep -v docs | grep -v tmp`
    if [ $? = 0 ]
    then
        for APACHE_PATH in $APACHE_DIR
        do
            APACHEPATH=`ls $APACHE_PATH | awk -F "/conf" '{print $1}'`
            CONFIGPATH=`$APACHEPATH/conf`
            
}