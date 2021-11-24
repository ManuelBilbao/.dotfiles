#!/bin/bash

pkill redshift
if [ "$BLOCK_BUTTON" == '3' ]; then
	echo "A🌙"
	echo "A🌙"
	redshift &> /dev/null 2>&1 &
	disown
	exit 0
fi

# Get the gamma values from xrandr. When redshift isn't on, all values are 1.0.
# GAMMAX=$(xrandr --verbose | grep 'Gamma' | awk -F ':' '{print $2}' | tr -d ' ')
# GAMMAY=$(xrandr --verbose | grep 'Gamma' | awk -F ':' '{print $3}' | tr -d ' ')
# GAMMAZ=$(xrandr --verbose | grep 'Gamma' | awk -F ':' '{print $4}' | tr -d ' ')
GAMMA=$(xrandr --verbose | grep 'Gamma' | grep 1.0:1.0:1.0)

if [ -n $GAMMA ]; then
	redshift -x > /dev/null
	echo "🌑"
	echo "🌑"
else
	redshift -O 4500 > /dev/null
	echo "🌙"
	echo "🌙"
fi

exit 0