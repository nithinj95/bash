#!/bin/bash

file_count() {
    local no_of_files=$(ls $1 | wc -l)
    echo "${1}:"
    echo "$no_of_files"
}

for arg in $@
do 
    file_count $arg
done