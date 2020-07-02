# Your preferred application launcher
# Note: pass the final command to swaymsg so that the resulting window can be opened
# on the original workspace that the command was run on.

for_window [app_id="tofi"] floating enable, border pixel 2, sticky enable
set $menu exec alacritty --class tofi -d 80 10 -e sh -c '$HOME/.config/sway/scripts/tofi | sort -u -r | fzf | $HOME/.config/sway/scripts/tofi | xargs swaymsg exec --'
