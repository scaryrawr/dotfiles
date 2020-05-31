# Your preferred application launcher
# Note: pass the final command to swaymsg so that the resulting window can be opened
# on the original workspace that the command was run on.
# set $menu dmenu_path | dmenu -b -i -fn 'Cascadia Code' -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15" | xargs swaymsg exec --
set $menu rofi -show drun | xargs swagmsg exec --