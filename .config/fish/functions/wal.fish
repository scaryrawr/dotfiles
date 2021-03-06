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

	if pkill mako > /dev/null
		mako & disown
	end

	if pkill dunst > /dev/null
		dunst & disown
	end

	if command -sq bat
		command bat cache --build
	end
end

