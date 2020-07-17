test gnome-keyring-daemon && set -gx SSH_AUTH_SOCK (gnome-keyring-daemon --start | awk -F '=' '/SSH_AUTH_SOCK/ {print $2}')
