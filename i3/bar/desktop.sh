#!/bin/bash

if [ "$BLOCK_BUTTON" == '1' ]; then
	i3-msg workspace "" > /dev/null
fi
echo -n ""