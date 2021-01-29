#!/usr/bin/env bash

# This script is to add window switching support in rofi for sway/i3

if [ -z "$@" ]; then
	{
		# Tiling Windows
		i3-msg -t get_tree | jq -r 'recurse(.nodes[]) | select(.type == "con") | select(.name) | .name'

		# Floating Windows
		i3-msg -t get_tree | jq -r '..| select(.floating_nodes? != null) | select(.floating_nodes != []) | .floating_nodes | .[].name'
	} | sort -n
else
	# Try to "sanitize" the string for sending to sway/i3, need to remove double quotes as well as some regex patterns...
	TITLE="$(echo $@ | sed 's/[\]\[)(\"\$^\\+?|]/./g')"

	# If multiple windows have the same title, we'll end up only being able to switch to the first one that appears in the tree
	i3-msg "[title=\"^${TITLE}\$\"] focus" &>/dev/null
fi
