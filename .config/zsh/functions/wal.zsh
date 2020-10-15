# Helper for running wal and setting up links
function wal() {
	command wal $@

	if [ ! -f ~/.config/mako/config ]; then
		ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
	fi

	if [ ! -f ~/.config/dunst/dunstrc ]; then
		ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
	fi

	if [ ! -f ~/.config/fish/conf.d/colors.fish ]; then
		ln -s ~/.cache/wal/colors.fish ~/.config/fish/conf.d/colors.fish
	fi

	if pkill dunst; then
		dunst & disown
	fi

	if pkill mako; then
		mako & disown
	fi
}
