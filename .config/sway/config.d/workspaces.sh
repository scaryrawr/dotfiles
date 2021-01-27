#
# Workspaces:
#

    set $ws1 "一"
    set $ws2 "二"
    set $ws3 "三"
    set $ws4 "四"
    set $ws5 "五"
    set $ws6 "六"
    set $ws7 "七"
    set $ws8 "八"
    set $ws9 "九"
    set $ws10 "十"

    # Switch to workspace
    bindsym $mod+1 workspace $ws1
    bindsym $mod+2 workspace $ws2
    bindsym $mod+3 workspace $ws3
    bindsym $mod+4 workspace $ws4
    bindsym $mod+5 workspace $ws5
    bindsym $mod+6 workspace $ws6
    bindsym $mod+7 workspace $ws7
    bindsym $mod+8 workspace $ws8
    bindsym $mod+9 workspace $ws9
    bindsym $mod+0 workspace $ws10

    # Move focused container to workspace
    bindsym $mod+Shift+1 move container to workspace $ws1
    bindsym $mod+Shift+2 move container to workspace $ws2
    bindsym $mod+Shift+3 move container to workspace $ws3
    bindsym $mod+Shift+4 move container to workspace $ws4
    bindsym $mod+Shift+5 move container to workspace $ws5
    bindsym $mod+Shift+6 move container to workspace $ws6
    bindsym $mod+Shift+7 move container to workspace $ws7
    bindsym $mod+Shift+8 move container to workspace $ws8
    bindsym $mod+Shift+9 move container to workspace $ws9
    bindsym $mod+Shift+0 move container to workspace $ws10
    # Note: workspaces can have any name you want, not just numbers.
    # We just use 1-10 as the default.

# Start ydotool back end for sending keys and gestures
exec ydotoold

# Start fusuma  for watching trackpad gestrues
exec $HOME/bin/fusuma -c $HOME/.config/fusuma/sway.yml
