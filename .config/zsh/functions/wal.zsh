#!/usr/bin/env zsh

# Helper for running wal and setting up links
function wal() {
	command wal $@

	if [ ! -f ~/.config/mako/config ]; then
		mkdir ~/.config/mako
		ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
	fi

	if [ ! -f ~/.config/dunst/dunstrc ]; then
		mkdir ~/.config/dunst
		ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
	fi

	if [ ! -f ~/.config/fish/conf.d/colors.fish ]; then
		mkdir -p ~/.config/fish/conf.d
		ln -s ~/.cache/wal/colors.fish ~/.config/fish/conf.d/colors.fish
	fi

	if [ ! -f ~/.config/bat/themes/wal.tmTheme ]; then
		mkdir -p ~/.config/bat/themes
		ln -s ~/.cache/wal/wal.tmTheme ~/.config/bat/themes/wal.tmTheme
	fi

	if pkill dunst; then
		dunst & disown
	fi

	if pkill mako; then
		mako & disown
	fi

	bat cache --build
}
