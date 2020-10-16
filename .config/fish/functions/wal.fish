function wal --description "wal wrapper"
	command wal $argv

	if ! test -e ~/.config/mako/config
		ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
	end

	if ! test -e ~/.config/dunst/dunstrc
		ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
	end

	if ! test -e ~/.config/fish/conf.d/colors.fish
		ln -s ~/.cache/wal/colors.fish ~/.config/fish/conf.d/colors.fish
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

