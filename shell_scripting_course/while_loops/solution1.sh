#!/bin/bash
line_num="1"

cat /etc/passwd | while read line
do
    echo " ${line_num}: ${line}"
    ((line_num++))
done