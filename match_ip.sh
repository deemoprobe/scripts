#!/bin/bash
# @Author: deemoprobe@gmail.com
# @Date:   2020-10-15 09:46:25
# @Last Modified by:   deemoprobe@gmail.com
# @Last Modified time: 2020-10-15 09:46:33

#ip="$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')"
FILENAME=/home/deemo/Scripts/ip.txt
ip=`cat $FILENAME | sed 's/,/\n/g' | grep "<Listen-address>" | sed 's/>/\n/g' | sed '1d' | sed 's/</\n/g' | sed '2d' | sed '2d'`
if [[ $ip =~ ^([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])\.([0-9]{1,2}|1[0-9][0-9]|2[0-4][0-9]|25[0-5])$ ]]
then
    echo "Match"
    echo "Addr: $ip"
    echo ${BASH_REMATCH[1]}
    echo ${BASH_REMATCH[2]}
    echo ${BASH_REMATCH[3]}
    echo ${BASH_REMATCH[4]}
else
    echo "Not match"
fi