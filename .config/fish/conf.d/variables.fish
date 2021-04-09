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

set NPM_DIR (which npm)
set NPM_DIR (dirname $NPM_DIR)
