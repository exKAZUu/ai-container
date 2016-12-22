#!/bin/bash

IFS_BACKUP=$IFS
IFS=$'\n'

commands=(
  "ruby -v"
  "ruby -v"
)
for cmd in ${commands[@]}; do
    echo "${cmd} => `eval ${cmd}`"
done

IFS=$IFS_BACKUP
