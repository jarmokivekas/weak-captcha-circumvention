#!/bin/bash

for i in {0..0}
do 
	curl -s "http://www.nowvideo.sx/captcha/captcha.php" -o captcha${i}.jpg
	convert -monochrome -crop 9x10+20+8 captcha${i}.jpg captcha${i}_0.bmp
	convert -monochrome -crop 9x10+29+8 captcha${i}.jpg captcha${i}_1.bmp
	convert -monochrome -crop 9x10+38+8 captcha${i}.jpg captcha${i}_2.bmp
	convert -monochrome -crop 9x10+47+8 captcha${i}.jpg captcha${i}_3.bmp
	convert -monochrome -crop 9x10+56+8 captcha${i}.jpg captcha${i}_4.bmp
done

string=""
for j in 0 1 2 3 4
do
	for i in 0 1 2 3 4 5 6 7 8 9 a b c d e f
	do
		if [ -z "$(diff captcha0_${j}.bmp sample/${i}.bmp)" ]
		then
			string=$string$i
		fi
		if [ -z "$(diff captcha0_${j}.bmp sample/${i}s.bmp)" ]
		then
			string=$string$i
		fi
	done
done

echo $string
#rm $(ls -1 |grep "captcha[1234567890]*\.jpg")
