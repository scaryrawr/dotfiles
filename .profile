PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.dotnet/tools:$HOME/GitHub/emsdk:$HOME/GitHub/emsdk/upstream/emscripten"
NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -n "$DESKTOP_SESSION" ]; then
	eval $(gnome-keyring-daemon --start)
	export SSH_AUTH_SOCK
fi
