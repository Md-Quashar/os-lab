#!/bin/bash
echo " enter login name"
read lnm
grep $lnm /etc/passwd >data
echo "user-name="
echo `cut -d ":" -f 1 data`
echo "passowrd="
echo `cut -d ":" -f 2 data`
echo "user_id="
echo `cut -d ":" -f 3 data`
echo "group_id="
echo `cut -d ":" -f 4 data`
echo "user id_info="
echo `cut -d ":" -f 5 data`
echo "home directory="
echo `cut -d ":" -f 6 data`
echo "login shell="
echo `cut -d ":" -f 7 data`
rm data


