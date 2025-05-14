#!/bin/bash
colorscheme=$(node ./gethour.js)
logged_color=""


if [ -f "current_colors.txt" ]; then
  logged_color=$(head -n 1 current_colors.txt)

else
  touch current_colors.txt

fi

if [ "$logged_color" != "$colorscheme" ]; then
  plasma-apply-colorscheme $colorscheme
  echo $colorscheme > current_colors.txt

elif [ -f "current_colors.txt" == false]; then
  

else
  echo "$colorscheme is already in use!"

fi