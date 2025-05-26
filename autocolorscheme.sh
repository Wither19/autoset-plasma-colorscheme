colorscheme=$(python3 ~/scripts/autoset-plasma-colorscheme/gethour.py)

light_colors="AritimLight"
dark_colors="MateriaDark"

if [ "$colorscheme" == "light" ]; then
  plasma-apply-colorscheme "$light_colors"

elif [ "$colorscheme" == "dark" ]; then
  plasma-apply-colorscheme "$dark_colors"

else
  echo "Could not apply color scheme"

fi