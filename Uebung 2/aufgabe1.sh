#!/bin/sh
# Shellskript, das eine Frage stellt und auf Ja-/Nein-Antwort reagiert

frage="$1"     # 1. Parameter: die Frage
jaAntwort="$2" # 2. Parameter: gültige Ja-Antwort
neinAntwort="$3" # 3. Parameter: gültige Nein-Antwort

antwort=""

# Solange die Antwort NICHT Ja oder Nein ist, wiederhole die Frage
while [ "$antwort" != "$jaAntwort" ] && [ "$antwort" != "$neinAntwort" ]
do
  echo "$frage"
  read antwort
done

# Wenn die Antwort der Ja-Antwort entspricht, Skript mit Exit-Code 0 beenden
if [ "$antwort" = "$jaAntwort" ]
then
  exit 0
else
  # Ansonsten (muss dann Nein sein) mit Exit-Code 1 beenden
  exit 1
fi
