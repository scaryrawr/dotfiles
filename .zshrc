export ZSH="/home/mike/.oh-my-zsh"

ZSH_THEME="agnoster"

# use wal colors after setting theme
cat ~/.cache/wal/sequences

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_UNICODE=true

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	encode64
	fzf
	git
	gulp
	node
	npm
	nvm
	python
	ruby
	rust
	systemd
	tmux
	dnf
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Git Dotfiles
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vi=nvim
alias vim=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
