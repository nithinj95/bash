#!/bin/bash -ex

first="/etc/shadow"
second="not/here"
third="/etc/passwd"

ls $first
ls $second
ls $third
