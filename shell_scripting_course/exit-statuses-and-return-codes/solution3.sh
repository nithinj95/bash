#!/bin/bash
cat /etc/shadow
return_code="$?"
if [ $return_code == 0 ]
then
    echo "Command succeeded"
    exit 0
else
    echo "Command failed"
    exit 1
fi