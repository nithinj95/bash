#!/bin/bash
shopt -s nullglob
for file in *.jpg
do
    mv $file $(date +%F)-${file}
done