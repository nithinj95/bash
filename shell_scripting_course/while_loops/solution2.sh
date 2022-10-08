#!/bin/bash
line_num="1"

read -p "Enter the num of lines to display" lines_to_display

cat /etc/passwd | while read line
do
    until [ "$lines_to_display" -lt "$line_num" ]
    do
        echo "${line_num}: ${line}"
        ((line_num++))
    done
done