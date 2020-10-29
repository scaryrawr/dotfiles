### Output configuration

# You can get the names of your outputs by running: swaymsg -t get_outputs
output * bg $wallpaper fill

output eDP-1 resolution 1920x1080 position 0,0
output DP-2 resolution 3840x1600 position 1920,0

exec /usr/libexec/geoclue-2.0/demos/agent
exec redshift-gtk -t 5700:3500 -m wayland -l geoclue2
exec mako
