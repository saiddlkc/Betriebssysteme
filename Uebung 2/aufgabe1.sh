#!/bin/sh
# Shellskript, das eine Frage stellt und auf Ja-/Nein-Antwort reagiert

frage="$1"       # 1. Parameter: die Frage
jaAntwort="$2"   # 2. Parameter: gültige Ja-Antwort
neinAntwort="$3" # 3. Parameter: gültige Nein-Antwort

antwort=""

# Solange die Antwort NICHT Ja oder Nein ist, wiederhole die Frage
while [ "$antwort" != "$jaAntwort" ] && [ "$antwort" != "$neinAntwort" ]
do
  echo "$frage"
  read antwort
done

# Wenn Ja → exit 0
if [ "$antwort" = "$jaAntwort" ]
then
  echo $?
  exit 0
else
  # Wenn Nein → exit 1
  echo $?
  exit 1
fi
