### Idle configuration

# This will lock your screen after 600 seconds of inactivity, then turn off
# your displays after another 1200 seconds, and turn your screens back on when
# resumed. It will also lock your screen before your computer goes to sleep.
exec swayidle -w \
         timeout 600 '${HOME}/.local/bin/blurlock &' \
         timeout 1200 'swaymsg "output * dpms off"' \
              resume 'swaymsg "output * dpms on"' \
         before-sleep '${HOME}/.local/bin/blurlock &'
