#!/bin/bash

bateria=$(acpi -b | grep -E -o '[0-9]*?%' | grep -E -o '[0-9]*')
cargador=$(acpi -a | grep -o "on-line" | grep -o "on")

if [ "$cargador" == "on" ]; then
	echo "⚡ $bateria%"
	echo "⚡ $bateria%"
else
	echo "🔋 $bateria%"
	echo "🔋 $bateria%"
fi

if [ $bateria -lt 15 ]; then
	echo "#FF0000"
	# if [ -z "$cargador" ]; then
		# notify-send "BATERIA BAJA" -u critical
	# fi
elif [ $bateria == 100 ]; then
	echo "#00FF00"
fi

exit 0