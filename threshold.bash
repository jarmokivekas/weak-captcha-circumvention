#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 0 a b c d e f
do
	#identify -format "%w %h %t" ${i}.jpg
	#identify -format "%w %h %t" ${i}s.jpg
	convert -crop "9x10+0+0" -monochrome ${i}.jpg ${i}.bmp
	convert -crop "9x10+0+0" -monochrome ${i}s.jpg ${i}s.bmp
done
