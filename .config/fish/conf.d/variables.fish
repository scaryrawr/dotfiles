if test -d $HOME/.local/bin
  set -gx PATH $PATH $HOME/.local/bin
end

if test -d $HOME/.cargo/bin
  set -gx PATH $PATH $HOME/.cargo/bin
end

if test -d $HOME/.dotnet/tools
  set -gx PATH $PATH $HOME/.dotnet/tools
end

if test -d $HOME/bin
  set -gx PATH $PATH $HOME/bin
end

if test -d /var/lib/flatpak/exports/bin
  set -gx PATH $PATH /var/lib/flatpak/exports/bin
end

if test -d $HOME/.local/share/flatpak/exports/bin
  set -gx PATH $PATH $HOME/.local/share/flatpak/exports/bin
end

set NPM_DIR (which npm)
set -gx NPM_DIR (dirname $NPM_DIR)

if test "$XDG_SESSION_DESKTOP" = "sway"
  set -gx XDG_CURRENT_DESKTOP sway
  set -x QT_IM_MODULE fcitx
  set -x GTK_IM_MODULE fcitx
  set -x XMODIFIERS '@im=fcitx'
  set -x XIM_PROGRAM fcitx
  set -x SDL_IM_MODULE fcitx
end
