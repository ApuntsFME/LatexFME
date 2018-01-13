# Què és git?
Git és un sistema de control de versions, és a dir, un programa que serveix
per mantenir un projecte (normalment de programació) registrant totes les versions
que s'han fet i gestionant les aportacions de tots. Si voleu més informació llegiu
la wikipedia.


# Com utilitzar github:
Github permet tant mantenir un repositori amb allò que volem com editar-lo i navegar-hi
directament. Per navegar, simplement s'ha de clicar a les carpetes que apareixen al panell
principal de la interfície. Les frases que diu al costat de noms de fitxers i carpetes no 
us han d'importar si no us encarregueu d'editar el repositori, descriuen l'últim canvi que 
s'hi ha fet.

Per descarregar un fitxer, o bé dóna la opció directament de descarregar, o el podeu descarregar
fent botó dret al botó de Raw i escollint l'opció de "guardar link com a". Per editar fitxers de
text es pot fer directament a través de l'interfície clicant edit i, després de fer els canvis
necessaris, clicant commit changes (amb la opció que dóna per default) i afegint una descripció
dels canvis que un hagi fet. Si no, sempre es pot pujar un fitxer amb el botó upload files.


## Com utilitzar git en local:
Si un vol editar els fitxer al seu ordinador i després actualitzar el repositori amb els canvis
corresponents ha de fer el següent:

La primera vegada que es fa, un ha de navegar fins on voldrà treballar amb una consola i escriure:
```
git clone https://github.com/MiquelOrtega/Mates NOM_CARPETA_ON_VOLS_GUARDAR
```

Això crearà exactament el mateix repositori a la carpeta que un hagi escrit. És a dir, es tindrà
tota la història del repositori fins aleshores. Si un vol fer certs canvis simplement
els ha de fer al seu ordinador, canviant els fitxers corresponents, i, una vegada acabat ha d'escriure
```
git add NOMS_FITXERS_CANVIATS
```
Per dir a git que un vol que es registrin els canvis fets. 

Després de fer tots els canvis necessaris, s'ha d'escriure
```
git commit -m "DESCRIPCIO DELS CANVIS FETS"
```
Per dir a git que un vol registrar els canvis fets a la seva màquina.

Finalment, per aplicar tots els commits fets al repositori online, s'ha d'escriure:
```
git push origin master
```
i escriure el correu i la contrasenya de github, cosa que actualitzara el repositori.

Per incorporar els canvis que han fet altres al repositori online al teu repositori local, s'ha d'escriure
```
git pull

```
Sovint, al fer un push, la comanda serà denegada. En molts casos és perquè algú altre ha fet un push abans
que un mateix, de manera que el repositori local no està al dia del que és en línia, cosa que prohibeix fer
un nou push. Aleshores, en comptes de pull es farà
```
git pull --rebase

```
Que deixarà una llista de commits més neta, evitant un merge innecessari.
(Això no és cert per a tots els projectes, sí amb el mètode de treball d'aquest, on no fem branching per simplicitat)

### Altres instruccions útils són:

| Ordre | Descripció |
| --- | --- |
| ```git commit -am "DESCRIPCIO COMMIT"``` | afegeix tots els fitxer modificats al commit directament |
| ```git rm nom_fitxer``` | fa rm i git add en un sol pas |
| ```git mv nom_fitxer``` | fa mv i git add en un sol pas |
| ```git status``` | dona informació sobre l'estat del repositori local en comparació al online |

### Més informació
Per més informació, llegir https://git-scm.com/docs/gittutorial o https://git-scm.com/book/en/v2/ sobretot
2.1, 2.2 i 2.5 d'aquest últim.

## Esborrar l'historial de commits des de git

Esborrar la carpeta `.git` pot portar problemes. Per esborrar l'historial i mantenir el codi:

```
# Check out to a temporary branch:
git checkout --orphan TEMP_BRANCH

# Add all the files:
git add -A

# Commit the changes:
git commit -am "Initial commit"

# Delete the old branch:
git branch -D master

# Rename the temporary branch to master:
git branch -m master

# Finally, force update to our repository:
git push -f origin master

# Track information for the current branch:
git branch --set-upstream-to=origin/master master
```

Sí, és un copy paste.


### Més informació
Per més informació, llegir https://gist.github.com/heiswayi/350e2afda8cece810c0f6116dadbe651l o [Google](https://www.google.es/).
