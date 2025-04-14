#!/bin/bash

if [ $# -le 2 ]; then
  echo "Bitte mehr als zwei Parameter angeben."
  exit 1
fi

echo "alle Parameter: ${#}"
echo "Vorletzter Parameter: ${@:$#-1:1}"
echo "Letzter Parameter: ${@:$#:1}"


