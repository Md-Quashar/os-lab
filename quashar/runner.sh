#!/bin/bash

while :
do
echo "enter assignment name"
read a_name
files=$( ls $PWD/$a_name/*.sh )
clear
for file in $files;do
	echo $file| cut -d "/" -f 7
done
echo "enter the name of the file you want to run or enter 0 to exit"
read filename
if [ $filename -eq 0 ]
then
	exit;
elif [ ! -f $PWD/$a_name/$filename ]
then
	echo "-----invalid file name select from above list-----"
	continue
fi
echo "-----------running selected script---------------"
bash $PWD/$a_name/$filename
echo "-----------ending selected script---------------"
echo "press 1 to continue or 0 to exit"
read choice
if [ $choice -eq 0 ]
then
	echo "exitting runner..."
	exit;
fi
done
