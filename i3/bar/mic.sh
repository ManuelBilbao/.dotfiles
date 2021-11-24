#!/bin/bash

if [ "$BLOCK_BUTTON" == "1" ]; then
	amixer set Capture toggle > /dev/null
fi

estado=$(amixer sget Capture | grep "\[on]")

echo "MIC"
echo "MIC"

if [ -z "$estado" ]; then
	echo "#666666" # Apagado
else
	echo "#FFFFFF" # Encendido
fi