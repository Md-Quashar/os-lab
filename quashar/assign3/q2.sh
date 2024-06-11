#!/bin/bash
ls > data
dr=0;
fl=0;
dm=""
fn=""
exec < data
while read line
do
if test -d $line
then 
    $((dr++))
    dm+=$line
    dm+=" "
else 
    $((fl++))
    fn+=$line
    fn+=" "
fi
done
echo "the no of dir is $dr "
echo "the name of dir is $dm "
echo "the no of file is $fl "
echo "the name of the file is $fn "

 
    
   
