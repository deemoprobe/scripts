#!/bin/bash

# 管道 |

ShowPythonRpm=`rpm -qa | grep python | wc -l`

echo "rpm软件包中Python包个数是:$ShowPythonRpm"
