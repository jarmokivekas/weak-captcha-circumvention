#!/bin/bash

bash get_captcha.bash | grep "^[1234567890abcdef]" > tmp.txt && cat tmp.txt && eog captcha0.jpg
