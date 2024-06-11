#!/bin/bash


for file in *.exe;
do

name="${file%.*}"
 mv "$file" "$name.sh"
 echo " renamed from $file to $name.sh"
 done
