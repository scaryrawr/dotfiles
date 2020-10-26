# Your preferred application launcher
# Note: pass the final command to swaymsg so that the resulting window can be opened
# on the original workspace that the command was run on.

for_window [app_id="tofi"] floating enable, border pixel 2, sticky enable
set $menu exec alacritty  --title tofi --class tofi -d 80 10 -e zsh -c 'tofi --modes drun,run,i3wm', sticky enable

# for_window [instance="tofi"] floating enable, border pixel 2, sticky enable
# set $menu exec urxvt  -title tofi -name tofi -geometry 80x10 -e zsh -c 'tofi --modes drun,run,i3wm', sticky enable

exec ~/.local/bin/smartfloat tofi

# set $menu wofi
