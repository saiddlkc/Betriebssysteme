#!/bin/bash

for file in *; do
	if [ ${#file} -ge 7 ] && [ ${#file} -lt 19 ]; then
		echo "$file"
	else
		echo "'$file' entspricht nicht den Regeln"
	fi
done
