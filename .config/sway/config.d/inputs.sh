### Input configuration

# You can get the names of your inputs by running: swaymsg -t get_inputs
# Read `man 5 sway-input` for more information about this section.

# Keyboard Layout and Caps Modifier all keyboards
input * {
    xkb_layout us
    xkb_options caps:ctrl_modifier
}

# Multimedia Keys
bindsym --locked XF86AudioRaiseVolume exec --no-startup-id pactl set-sink-volume $(pacmd list-sinks |awk '/* index:/{print $3}') +5%
bindsym --locked XF86AudioLowerVolume exec --no-startup-id pactl set-sink-volume $(pacmd list-sinks |awk '/* index:/{print $3}') -5%
bindsym --locked XF86AudioMute exec --no-startup-id pactl set-sink-mute $(pacmd list-sinks |awk '/* index:/{print $3}') toggle
bindsym --locked XF86AudioPlay exec playerctl play-pause
bindsym --locked XF86AudioNext exec playerctl next
bindsym --locked XF86AudioPrev exec playerctl previous
bindsym --locked XF86AudioMicMute exec amixer set Capture toggle

# Multi-Function Keys
bindsym --locked XF86WLAN exec [[ "$(nmcli radio wifi)" == "enabled" ]] && nmcli radio wifi off || nmcli radio wifi on
bindsym --locked XF86Bluetooth exec blueman-assistant

# Brightness controls
bindsym --locked XF86MonBrightnessUp exec --no-startup-id light -A 5
bindsym --locked XF86MonBrightnessDown exec --no-startup-id light -U 5

bindsym $mod+Shift+Print exec grim -g "$(slurp)" $(xdg-user-dir PICTURES)/$(date +'%Y-%m-%d-%H%M%S_grim.png')

input "2:14:ETPS/2_Elantech_Touchpad" {
    dwt enabled
    tap enabled
    natural_scroll enabled
}