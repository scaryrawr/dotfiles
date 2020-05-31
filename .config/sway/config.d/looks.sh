### Window Looks
# Borders
    default_border pixel 1

# Opacity

# Default Opacity when using opacity
set $opacity 0.9
for_window [class="(Code)"] opacity $opacity

# Gaps
    smart_gaps on
    gaps inner 4
    gaps outer 2

# Import GNOME settings
exec_always import-gsettings \
    gtk-theme:gtk-theme-name \
    icon-theme:gtk-icon-theme-name \
    cursor-theme:gtk-cursor-theme-name