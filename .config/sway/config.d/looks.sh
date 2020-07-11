### Window Looks
# Borders
    default_border pixel 1

# Gaps
    smart_gaps on
    gaps inner 8

exec --no-startup-id ${HOME}/.config/sway/scripts/sway_inactive &

no_focus [title="Microsoft Teams Notification"]
for_window [title="Microsoft Teams Notification"] move position 20 20
