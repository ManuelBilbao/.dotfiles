#!/bin/bash

if [ "$BLOCK_BUTTON" == '1' ]; then
	playerctl -p spotify play-pause
elif [ "$BLOCK_BUTTON" == '3' ]; then
	playerctl -p spotify previous
elif [ "$BLOCK_BUTTON" == '2' ]; then
	playerctl -p spotify next
fi

sleep 0.1s

estado=$(playerctl -p spotify status)
titulo=$(playerctl -p spotify metadata title)
artista=$(playerctl -p spotify metadata artist)

if [ "$titulo" ]; then echo "$titulo - $artista"; fi
if [ "$titulo" ]; then echo "$titulo"; fi

[ "$estado" == "Paused" ] && echo "#FF0000"
exit 0