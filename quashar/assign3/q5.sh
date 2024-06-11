#!/bin/bash

for file in *.sh;
do
  name="${file%.*}"
  
  mv "$file"  "$name.exe"
  echo " renamed from $file to $name.exe "
  
  done
  
