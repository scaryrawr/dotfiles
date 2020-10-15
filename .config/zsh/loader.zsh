CONFIG_DIRS=(
	~/.config/zsh/config.d
	~/.config/zsh/functions
)

for CONFIG_DIR in $CONFIG_DIRS; do
	for CONFIG in $CONFIG_DIR/*.zsh; do
		source $CONFIG
	done
done

