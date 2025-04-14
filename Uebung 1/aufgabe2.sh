#!/bin/bash

if [ $(($# % 2)) -ne 0 ]; then
	echo "Fehler: Ungerade Anzahl" >&2
	exit 1
fi
echo "Para Anzahl korrekt".

