PATH="$PATH:$HOME/.cargo/bin:$HOME/.local/bin:$HOME/.dotnet/tools:$HOME/GitHub/emsdk:$HOME/GitHub/emsdk/upstream/emscripten"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
