if test -d $HOME/.local/bin
  set PATH $PATH $HOME/.local/bin
end

if test -d $HOME/.cargo/bin
  set PATH $PATH $HOME/.cargo/bin
end

if test -d $HOME/.dotnet/tools
  set PATH $PATH $HOME/.dotnet/tools
end

set NPM_DIR (which npm)
set NPM_DIR (dirname $NPM_DIR)
