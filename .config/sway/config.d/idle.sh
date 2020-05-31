### Idle configuration

# This will lock your screen after 300 seconds of inactivity, then turn off
# your displays after another 300 seconds, and turn your screens back on when
# resumed. It will also lock your screen before your computer goes to sleep.
exec swayidle -w \
         timeout 300 'grim /tmp/screenshot.png && \
                      convert /tmp/screenshot.png -blur 0x7 /tmp/blurshot.png && \
                      rm /tmp/screenshot.png && \
                      swaylock -i /tmp/blurshot.png && \
                      rm /tmp/blurshot.png &' \
         timeout 600 'swaymsg "output * dpms off"' \
              resume 'swaymsg "output * dpms on"' \
         before-sleep 'grim /tmp/screenshot.png && \
                      convert /tmp/screenshot.png -blur 0x7 /tmp/blurshot.png && \
                      rm /tmp/screenshot.png && \
                      swaylock -i /tmp/blurshot.png && \
                      rm /tmp/blurshot.png &'
