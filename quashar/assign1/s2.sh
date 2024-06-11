#!/bin/bash
echo " enter basic salary of the empolyee"
read salary
HRA=3000
DA=$(( ( $salary * 20 ) / 100 ))
incentive=2000
net_salary=$(( $HRA + $DA + $incentive + $salary ))
echo " the payslip of the empolyee is : "
echo " salary=$salary "
echo " HRA=3000 "
echo " DA=$DA "
echo " incentive=2000 "
echo " Net salary of the empolyee is $net_salary "

