### Key bindings
# Basics:
    # Start a terminal
    bindsym $mod+Return exec $term

    # Kill focused window
    bindsym $mod+q kill

    # Start your launcher
    bindsym $mod+slash exec $menu

    # Drag floating windows by holding down $mod and left mouse button.
    # Resize them with right mouse button + $mod.
    # Despite the name, also works for non-floating windows.
    # Change normal to inverse to use left mouse button for resizing and right
    # mouse button for dragging.
    floating_modifier $mod normal

    # Reload the configuration file
    bindsym $mod+Shift+c reload

    # Exit sway (logs you out of your Wayland session)
    bindsym $mod+Shift+e exec swaynag -t warning -m 'You pressed the exit shortcut. Do you really want to exit sway? This will end your Wayland session.' -b 'Yes, exit sway' 'swaymsg exit'

    # Lock Screen
    bindsym $mod+Escape exec '${HOME}/.local/bin/blurlock -l swaylock -s grim &'

    # Screen shot
    bindsym $mod+Shift+Print exec grim -g "$(slurp)" $(xdg-user-dir PICTURES)/$(date +'%Y-%m-%d-%H%M%S_grim.png')
    bindsym $mod+Shift+s exec grim -g "$(slurp)" $(xdg-user-dir PICTURES)/$(date +'%Y-%m-%d-%H%M%S_grim.png')

    # Project screen
    bindsym $mod+p exec '${HOME}/.local/bin/wl-screenshare -s'
    bindsym $mod+Shift+p exec '${HOME}/.local/bin/wl-screenshare -q'

#
# Moving around:
#
    # Move your focus around
    bindsym $mod+$left focus left
    bindsym $mod+$down focus down
    bindsym $mod+$up focus up
    bindsym $mod+$right focus right
    # Or use $mod+[up|down|left|right]
    bindsym $mod+Left focus left
    bindsym $mod+Down focus down
    bindsym $mod+Up focus up
    bindsym $mod+Right focus right

    # Move the focused window with the same, but add Shift
    bindsym $mod+Shift+$left move left
    bindsym $mod+Shift+$down move down
    bindsym $mod+Shift+$up move up
    bindsym $mod+Shift+$right move right
    # Ditto, with arrow keys
    bindsym $mod+Shift+Left move left
    bindsym $mod+Shift+Down move down
    bindsym $mod+Shift+Up move up
    bindsym $mod+Shift+Right move right
