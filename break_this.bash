#!/bin/bash

curl -s "${1}" -o captcha.jpg
bash get_captcha.bash captcha.jpg && eog captcha.jpg
