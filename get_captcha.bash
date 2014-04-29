#!/bin/bash

origpic=$1
convert -monochrome -crop 9x10+20+8 $origpic captcha_0.bmp
convert -monochrome -crop 9x10+29+8 $origpic captcha_1.bmp
convert -monochrome -crop 9x10+38+8 $origpic captcha_2.bmp
convert -monochrome -crop 9x10+47+8 $origpic captcha_3.bmp
convert -monochrome -crop 9x10+56+8 $origpic captcha_4.bmp

string=""
for j in 0 1 2 3 4
do
	for i in 0 1 2 3 4 5 6 7 8 9 a b c d e f
	do
		if [ -z "$(diff captcha_${j}.bmp sample/${i}.bmp)" ]
		then
			string=$string$i
		fi
		if [ -z "$(diff captcha_${j}.bmp sample/${i}s.bmp)" ]
		then
			string=$string$i
		fi
	done
done

echo $string
