#!/bin/bash

message="Random number: ${RANDOM}"
logger -t $0 -p user.info "$message"