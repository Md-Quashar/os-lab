#!/bin/bash

IFS=":" read -ra PATH_ARRAY<<<"$PATH"
 for dir in "${PATH_ARRAY[@]}"; 
 do 
    echo "diectory : $dir"
    echo "$(ls -ld --color)" = auto $dir
    
  done
     
