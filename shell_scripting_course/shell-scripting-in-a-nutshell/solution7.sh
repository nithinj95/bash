#!/bin/bash
input="$1"
if [ -d $input ]
then
    echo "This is a dir"
elif [ -f $input ]
then
    echo "This is a regular file"
else
    echo "This is something other than a regular file or directory."
fi