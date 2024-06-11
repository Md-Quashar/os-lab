#!/bin/bash
 for file in * ; 
 do 
  if [ -f "$file" ]; then
  echo " $file is normal file "
  elif [ -d "$file" ]; then 
   echo " $file is a dirctory "
   else 
     echo " $file is neither file or directory "
     
  fi
  done
