#!/bin/bash
echo " enter five digit number "
read num
rem=0
rev=0
 while [ $num -gt 0 ];
 do 
  rem=$(( $num % 10 ))
  rev=$(( $rev * 10 + $rem ))
  num=$(( $num / 10 ))
  done
  echo " the reverse of the given number $rev "
