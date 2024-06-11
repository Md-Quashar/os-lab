#!/bin/bash
echo "enter the length of rectangle"
read len
echo "enter the breath of rectangle"
read bre
peri=$(( 2 * ( $len + $bre ) ))
area=$(( $len * $bre ))
echo "the perimeter of the rectangle $peri"
echo "the area of the rectangle $area"
