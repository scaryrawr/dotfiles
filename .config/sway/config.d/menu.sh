# Your preferred application launcher
# Note: pass the final command to swaymsg so that the resulting window can be opened
# on the original workspace that the command was run on.

for_window [instance="tofi"] floating enable, border pixel 2, sticky enable
for_window [app_id="tofi"] floating enable, border pixel 2, sticky enable

set $menu exec alacritty  --title tofi --class tofi -o window.dimensions.columns=80 -o window.dimensions.lines=15 -e zsh -c 'tofi --modes drun,run,i3wm'
# set $menu exec urxvt  -title tofi -name tofi -geometry 80x10 -e zsh -c 'tofi --modes drun,run,i3wm'

exec ${HOME}/.local/bin/smartfloat tofi

# set $menu wofi
