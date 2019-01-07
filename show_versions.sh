#!/bin/bash

IFS_BACKUP=$IFS
IFS=$'\n'

for cmd in $*; do
    echo "${cmd} =>\n`eval ${cmd}`\n"
done

IFS=$IFS_BACKUP
