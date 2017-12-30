#!/bin/bash

upload(){
  SRC=$1
  DEST=$2
  MSG=$3
  read -p "Nom d'usuari: " user
  read -s -p "Contrasenya: " password
  SHA=$(curl -s -u $user:$password "https://api.github.com/repos/ApuntsFME/apuntsfme.github.io/contents$DEST" | \
  python -c "import sys, json; print json.load(sys.stdin)['sha']")
  { echo -n "{\"path\":\"$DEST\", \"message\":\"$MSG\", \"sha\":\"$SHA\", \"content\":\""; base64 -w 0 $SRC; echo -n "\"}"; } | curl -s -H "Content-Type: application/json" -u $user:$password -X PUT -d @- \
  "https://api.github.com/repos/ApuntsFME/apuntsfme.github.io/contents$DEST" > /dev/null
  #{ echo "{\"path\":\"$DEST\", \"message\":\"$MSG\", \"sha\":\"$SHA\", \"content\":\""; base64 $SRC; echo "\"}"; } | tr "\n" " "
  echo "Molt bé! Ja s'ha actualitzat, a no ser que et digui algo raro o que hagi passat algo i no t'ho hagi dit, mira Telegram per assegurar-te'n."
}