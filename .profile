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

if [ -d "$HOME/bin" ]; then
	PATH="$PATH:$HOME/bin"
fi

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"

if [ -n "$DESKTOP_SESSION" ]; then
	eval $(gnome-keyring-daemon --start)
	export SSH_AUTH_SOCK
fi

source "$HOME/.cargo/env"
