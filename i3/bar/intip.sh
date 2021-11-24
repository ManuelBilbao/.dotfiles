#!/bin/bash

ip=$(/usr/share/i3blocks/iface -4)

if [ "$BLOCK_BUTTON" == '3' ]; then
	echo "$ip" > xclip -selection clipboard -rmlastnl
fi

echo "$ip"