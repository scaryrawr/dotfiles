function wal --description "wal wrapper"
	command wal $argv

	if ! test -e ~/.config/mako/config
		ln -s ~/.cache/wal/mako.conf ~/.config/mako/config
	end

	if ! test -e ~/.config/dunst/dunstrc
		ln -s ~/.cache/wal/dunstrc ~/.config/dunst/dunstrc
	end
end

