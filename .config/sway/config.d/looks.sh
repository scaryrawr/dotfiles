### Window Looks
# Borders
    default_border pixel 1

# Gaps
    smart_gaps on
    gaps inner 24

exec ${HOME}/.config/sway/scripts/sway_inactive

no_focus [title="Microsoft Teams Notification"]
for_window [title="Microsoft Teams Notification"] floating enable, move position 20 20
for_window [title="Firefox — Sharing Indicator"] floating enable
