plasma_color_list=$(plasma-apply-colorscheme -l)

current_color=$(plasma-apply-colorscheme -l | grep "(" | cut -d "(" -f1 | cut -c 4- | xargs)

new_color="AritimLight"

if [ "$current_color" == "AritimLight" ]; then
  new_color="MateriaDark"

fi

plasma-apply-colorscheme "$new_color"

kwin_cfg=".config/kwinrc"

current_window=$(grep "theme=" "$kwin_cfg")
window_theme_opt_number=$(grep -n "theme=" "$kwin_cfg" | cut -d ":" -f1)

light_window="theme=__aurorae__svg__Qogir-light-circle"
dark_window="theme=__aurorae__svg__Qogir-dark-circle"

new_window="$light_window"

if [ "$current_window" == "$light_window" ]; then
  new_window="$dark_window"

fi

sed -i "${window_theme_opt_number}s/.*/${new_window}/" "$kwin_cfg"