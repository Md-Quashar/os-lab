#!/bin/bash

total=0;

for file in *; do
 
 if [ -f $file ]; then
    
    size=`du -b $file`
     echo $size | cut -d " " -f 1  >> tem
     echo $size 
     
 # total= $(( $total + `$size | cut -d " " -f 1` ))
   # (( total + = size ))
    fi
    done
    exec < tem
    while read line
    do
      total=$(( $total + $line ))  
      done
   
 echo " total size of all the file in the directory is $total byte "
    rm tem
