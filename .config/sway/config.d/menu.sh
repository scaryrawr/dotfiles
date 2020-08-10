# Your preferred application launcher
# Note: pass the final command to swaymsg so that the resulting window can be opened
# on the original workspace that the command was run on.

for_window [instance="tofi"] floating enable, border pixel 2, sticky enable
set $menu exec urxvt  -title tofi -name tofi -geometry 80x10 -e sh -c '${HOME}/GitHub/tofi/tofi'
