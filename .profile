NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"

if [ -d "$HOME/.cargo/bin" ]; then
	PATH="$PATH:$HOME/.cargo/bin"
fi

if [ -d "$HOME/.local/bin" ]; then
	PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "$HOME/.dotnet/tools" ]; then
	PATH="$PATH:$HOME/.dotnet/tools"
fi

if [ -d "$HOME/.gem/bin" ]; then
	PATH="$PATH:$HOME/.gem/bin"
fi

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"

if [ -n "$DESKTOP_SESSION" ]; then
	eval $(gnome-keyring-daemon --start)
	export SSH_AUTH_SOCK
fi

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
	export MOZ_ENABLE_WAYLAND=1
fi

if [ "$XDG_SESSION_DESKTOP" = "sway" ]; then
	export XDG_CURRENT_DESKTOP=sway
	export GTK_IM_MODULE=fcitx
	export QT_IM_MODULE=fcitx
	export XMODIFIERS=@im=fcitx
	export XIM_PROGRAM=fcitx
	export SDL_IM_MODULE=fcitx
else
	export GTK_IM_MODULE=""
	export QT_IM_MODULE=""
	export XMODIFIERS=""
	export XIM_PROGRAM=""
	export SDL_IM_MODULE=""
fi

source "$HOME/.cargo/env"
