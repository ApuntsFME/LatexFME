#!/bin/bash

upload(){
  NAME=$1
  DEST=$2
  MSG=$3
  read -p "Nom d'usuari: " user
  read -s -p "Contrasenya: " password
  echo ""
  make "silent$NAME"
  make "silent$NAME"
  make "silent$NAME"
  make "silent$NAME"
  echo ""
  echo "Això trigarà una mica... Keep calm and carry on!"
  SHA=$(curl -s -u $user:$password "https://api.github.com/repos/ApuntsFME/apuntsfme.github.io/contents$DEST" | \
  python -c "import sys, json; print(json.load(sys.stdin)['sha'])")
  { echo -n "{\"path\":\"$DEST\", \"message\":\"$MSG\", \"sha\":\"$SHA\", \"content\":\""; base64 -w 0 $NAME.pdf; echo -n "\"}"; } | curl -s -H "Content-Type: application/json" -u $user:$password -X PUT -d @- \
  "https://api.github.com/repos/ApuntsFME/apuntsfme.github.io/contents$DEST" > /dev/null
  #{echo "{\"path\":\"$DEST\", \"message\":\"$MSG\", \"sha\":\"$SHA\", \"content\":\""; base64 $NAME.pdf; echo "\"}"; } | tr "\n" " "
  echo "Molt bé! Ja s'ha actualitzat, a no ser que et digui algo raro o que hagi passat algo i no t'ho hagi dit, mira Telegram per assegurar-te'n."
}
