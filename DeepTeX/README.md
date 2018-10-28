# Instruccions de DeepTeX:
## Configuració de DeepTeX
Per canviar la longitud màxima de línia, cal canviar el valor de la variable `mida_linia` del fitxer `main.cc`.
## Compilació de DeepTeX
Per compilar DeepTeX, es pot emprar la comanda
```
g++ main.cc -o DeepTeX
```
## Utilització de DeepTeX
Per formatejar un fitxer `fitxerambliniesllarguesquenopucveurealmeueditorperquesocunprimoqueutilitzavim.tex`, es pot emprar la comanda (una vegada s'hagi compilat DeepTeX)
```
./DeepTeX <fitxerambliniesllarguesquenopucveurealmeueditorperquesocunprimoqueutilitzavim.tex >fitxeramblesliniesmescurtes.tex
```
D'aquesta manera, el fitxer es formateja i queda emmagatzemat al fitxer `fitxeramblesliniesmescurtes.tex`. Compte, aquesta comanda sobreescriu els contiguts (si n'hi havia) del fitxer `fitxeramblesliniesmescurtes.tex`.
## Reclamacions sobre DeepTeX
Si quelcom no funciona correctament o es vol fer algun afegit a les funcionalitats de DeepTeX, poseu-vos en contacte amb en Jordi.
