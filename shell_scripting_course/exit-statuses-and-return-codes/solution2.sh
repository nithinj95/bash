#!/bin/bash
file="$1"
if [ -f $file ]
then
    exit 0
elif [ -d $file ]
then
    exit 1
else
    exit 2
fi