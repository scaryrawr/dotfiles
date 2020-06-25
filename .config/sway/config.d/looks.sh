### Window Looks
# Borders
    default_border pixel 1

# Opacity

# Default Opacity when using opacity
set $opacity 0.95
for_window [class="(Code)"] opacity $opacity

# Gaps
    smart_gaps on
    gaps inner 8

exec --no-startup-id ${HOME}/.local/bin/sway_inactive &
