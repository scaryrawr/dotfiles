if [ -f /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	ZSH_AUTOSUGGEST_STRATEGY=(completion history)
	source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
