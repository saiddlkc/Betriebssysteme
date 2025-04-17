#!/bin/sh  //shbang damit es ausgeführt wird muss immer da stehen bei sh

# 1. Dateiendung vom Benutzer übergeben
#    Beispiel: .txt, .jpg, .sh
# es wird also das was der benutzer eingibt in der variable endung gespeichert
# die 1 steht dafür dass es der erste parameter ist.
endung="$1"

# 2. Prüfen, ob ein Parameter übergeben wurde

#-z steht hier für zero length, also null länge
# wenn der parameter leer ist, dann wird die nachricht ausgegeben
# und das skript wird mit exit 1 beendet
# exit 1 bedeutet dass ein fehler aufgetreten ist



if [ -z "$endung" ]; then
  echo "Bitte Dateiendung als Parameter angeben (z. B. .txt)"
  exit 1
fi

# 3. Backup-Verzeichnis anlegen, falls nicht vorhanden

# -d prüft, ob ein Verzeichnis existiert, und ! kehrt das Ergebnis um. 
# ! -d bedeutet also Existiert das Verzeichnis nicht?

if [ ! -d backup ]; then
  mkdir backup
fi

# 4. Alle passenden Dateien im aktuellen Verzeichnis durchgehen
# * steht für alle dateien, also alles was der user eingegben hat
#  
# 
for datei in *"$endung"
do
  # 5. Prüfen, ob überhaupt eine Datei mit der Endung existiert
    # -f prüft, ob eine Datei existiert und ! kehrt das Ergebnis um.
    # er fragt sozusagen : ! -f bedeutet also Existiert die Datei nicht?
  if [ ! -f "$datei" ]; then
    continue
  fi

  # 6. Frage stellen
    # echo gibt die nachricht aus
    # in datei werden die Daten gespeichert die die endung hatten was angegeben wurde.
  echo "Datei '$datei' kopieren? (Ja/Nein)"
  antwort=""

  # 7. Solange keine gültige Antwort gegeben wurde, wiederholen
    # hier wird die antwort gespeichert die der user eingibt
    # und die antwort wird in der variable $antwort gespeichert
  while [ "$antwort" != "Ja" ] && [ "$antwort" != "Nein" ]
  do
    read antwort
  done

  # 8. Wenn Ja → kopieren
    # hier wird die antwort überprüft und wenn sie Ja ist, dann wird die datei in das backup verzeichnis kopiert
    # cp steht für copy und wird verwendet um dateien zu kopieren
    # $datei ist die datei/bzw die datein die kopiert werden sollen
    # backup/ ist das verzeichnis in das die datei kopiert werden soll
  if [ "$antwort" = "Ja" ]; then
    cp "$datei" backup/
    echo "→ '$datei' wurde in 'backup/' kopiert."
  fi
done
