function wal --description "wal wrapper"
	command wal $argv

	if ! test -e ~/.config/mako/config
		mkdir -p ~/.config/mako
		ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
	end

	if ! test -e ~/.config/dunst/dunstrc
		mkdir -p ~/.config/dunst
		ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
	end

	if ! test -e ~/.config/fish/conf.d/colors.fish
		mkdir -p ~/.config/fish.conf.d
		ln -s ~/.cache/wal/colors.fish ~/.config/fish/conf.d/colors.fish
	end

	if ! test -e ~/.config/bat/themes/wal.tmTheme
		mkdir -p ~/.config/bat/themes
		ln -s ~/.cache/wal/wal.tmTheme ~/.config/bat/themes/wal.tmTheme
	end

	if pgrep mako > /dev/null
		pkill mako
		command mako & disown
	end

	if pgrep dunst > /dev/null
		pkill dunst
		command dunst & disown
	end
end

