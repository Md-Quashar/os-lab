#!/bin/bash

 exec < file.txt
while read  line
 do
 pth=$( tr ' ' '\n' <<< "$line" )
 sum=0;
 for v in $pth;
 do
   sum=$(( $sum + $v ))
 done 
  echo $sum

 done 
 
 
