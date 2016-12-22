#!/bin/bash

IFS_BACKUP=$IFS
IFS=$'\n'

for cmd in $*; do
    echo "${cmd} => `eval ${cmd}`"
done

IFS=$IFS_BACKUP
