#!/bin/bash

my_logger() {
    local message="$@"
    echo "$message"
    logger -i -t randomly -p user.info "$message"
}

my_logger "Random number: ${RANDOM}"
my_logger "Random number: ${RANDOM}"
my_logger "Random number: ${RANDOM}"