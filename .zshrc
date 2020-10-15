source ~/.config/zsh/loader.zsh

export ZSH="/home/mike/.oh-my-zsh"

ZSH_THEME="agnoster"

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
