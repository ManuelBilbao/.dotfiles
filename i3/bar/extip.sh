#!/bin/bash

ip=$(wget -qO - ipv4.icanhazip.com)

if [ "$BLOCK_BUTTON" == '3' ]; then
	echo "$ip" | xclip -selection clipboard -rmlastnl
fi

if [ "$ip" != "" ]; then
	echo "$ip"
else
	echo "down"
	echo "down"
	echo "#FF0000"
fi