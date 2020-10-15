### Input configuration

# You can get the names of your inputs by running: swaymsg -t get_inputs
# Read `man 5 sway-input` for more information about this section.

# Keyboard Layout and Caps Modifier all keyboards
input * {
    xkb_layout us
    xkb_options caps:ctrl_modifier
}

# Multimedia Keys
bindsym --locked XF86AudioRaiseVolume exec pactl set-sink-volume $(pacmd list-sinks |awk '/* index:/{print $3}') +5%
bindsym --locked XF86AudioLowerVolume exec pactl set-sink-volume $(pacmd list-sinks |awk '/* index:/{print $3}') -5%
bindsym --locked XF86AudioMute exec pactl set-sink-mute $(pacmd list-sinks |awk '/* index:/{print $3}') toggle
bindsym --locked XF86AudioMicMute exec amixer set Capture toggle

bindsym --locked XF86AudioPlay exec timeout 2 playerctl play-pause; pkill -SIGRTMIN+3 waybar
bindsym --locked XF86AudioStop exec timeout 2 playerctl stop; pkill -SIGRTMIN+3 waybar
bindsym --locked XF86AudioNext exec timeout 2 playerctl next; pkill -SIGRTMIN+3 waybar
bindsym --locked XF86AudioPrev exec timeout 2 playerctl previous; pkill -SIGRTMIN+3 waybar

# Brightness controls
bindsym --locked XF86MonBrightnessUp exec light -A 5
bindsym --locked XF86MonBrightnessDown exec light -U 5

# Multi-Function Keys
#bindsym --locked XF86WLAN exec [[ "$(nmcli radio wifi)" == "enabled" ]] && nmcli radio wifi off || nmcli radio wifi on
bindsym --locked XF86Tools exec gnome-control-center
bindsym --locked XF86Bluetooth exec sleep 1 && pkill -SIGRTMIN+2 waybar


input "2:14:ETPS/2_Elantech_Touchpad" {
    dwt enabled
    tap enabled
    natural_scroll enabled
    middle_emulation enabled
}

exec ibus-daemon -xdr

bindsym $mod+space exec ${HOME}/.local/bin/nextkb

