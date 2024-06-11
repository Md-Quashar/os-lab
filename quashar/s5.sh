#!/bin/bash
echo " enter the name of the user "
read name
user_info=$( grep "^$name:" /etc/passwd )
username=$( echo "$user_info" | cut -d ":" -f 1 )
password=$( echo "$user_info" | cut -d ":" -f 2 )
user_id=$( echo "$user_info" | cut -d ":" -f 3 )
group_id=$( echo "$user_info" | cut -d ":" -f 4 )
user_info=$( echo "$user_info" | cut -d ":" -f 5 )
home_directory=$( echo "$user_info" | cut -d ":" -f 6 )
login_shell=$( echo "$user_info" | cut -d ":" -f 7 )
echo " username : $username "
echo " password : $password "
echo " user id : $user_id "
echo " group id : $group_id "
echo " user id info : $user_info "
echo " Home directory : $home_directory "
echo " Login shell : $login_shell "

