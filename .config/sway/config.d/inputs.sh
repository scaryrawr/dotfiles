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
bindsym --locked XF86AudioMicMute exec --no-startup-id amixer set Capture toggle

bindsym --locked XF86AudioPlay exec --no-startup-id playerctl play-pause && sleep 1 && pkill -RTMIN+3 waybar &
bindsym --locked XF86AudioStop exec --no-startup-id playerctl stop && sleep 1 && pkill -RTMIN+3 waybar &
bindsym --locked XF86AudioNext exec --no-startup-id playerctl next && sleep 1 && pkill -RTMIN+3 waybar &
bindsym --locked XF86AudioPrev exec --no-startup-id playerctl previous && sleep 1 && pkill -RTMIN+3 waybar &

# Brightness controls
bindsym --locked XF86MonBrightnessUp exec --no-startup-id light -A 5
bindsym --locked XF86MonBrightnessDown exec --no-startup-id light -U 5

# Multi-Function Keys
bindsym --locked XF86WLAN exec --no-startup-id [[ "$(nmcli radio wifi)" == "enabled" ]] && nmcli radio wifi off || nmcli radio wifi on
bindsym --locked XF86Tools exec --no-startup-id gnome-control-center
bindsym --locked XF86Bluetooth exec --no-startup-id [[ rfkill list bluetooth | rg -q 'yes$' ]] && rfkill unblock bluetooth || rfkill block bluetooth

bindsym $mod+Shift+Print exec --no-startup-id grim -g "$(slurp)" $(xdg-user-dir PICTURES)/$(date +'%Y-%m-%d-%H%M%S_grim.png')

input "2:14:ETPS/2_Elantech_Touchpad" {
    dwt enabled
    tap enabled
    natural_scroll enabled
}

exec --no-startup-id ibus-daemon --xim -d -r

bindsym $mod+space exec --no-startup-id ${HOME}/.config/sway/scripts/nextkb
