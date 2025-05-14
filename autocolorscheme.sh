#!/bin/bash
colorscheme=$(node ./gethour.js)
logged_color=""


if [ -f "current_colors.txt" ]; then
  logged_color=$(head -n 1 current_colors.txt)



if [ "$logged_color" != "$colorscheme" ]; then
  plasma-apply-colorscheme $colorscheme
  echo $colorscheme > current_colors.txt
else
  echo "$colorscheme is already in use!"
fi