#!/bin/bash
param="$1"
function file_count() {
    local no_files=$(ls $param | wc -l)
    echo "${param}:"
    echo "  $no_files"
}
file_count
