#!/bin/bash
read -p "Please enter a file extension:" extension
read -p "Please enter a file prefix:" prefix

for i in *.$extension
do 
    if [ $prefix=0 ]
    then
        mv $i $(date +%F)-$i
        echo "Renaming $i to $(date +%F)-$i"
    else 
        mv $i ${prefix}-$i
        echo "Renaming $i to mv $i ${prefix}-$i"
    fi
done
