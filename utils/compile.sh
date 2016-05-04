#!/bin/bash
# Author: ouabde_r
# Compile emacs config

cmd="emacs -Q --batch"

directories=$(find src/modules -type d)
for directory in $directories
do
    cmd="$cmd -L $directory"
done

cmd="$cmd -f batch-byte-compile"
files=$(find src/modules -name "*.el")

for file in $files
do
    cmd="$cmd $file"
done

$cmd
