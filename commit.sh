#!/bin/bash
git add -A
git reset HEAD commit.sh
git reset HEAD ../commit.sh
git reset HEAD ../../commit.sh
git reset HEAD ../../../commit.sh
git reset HEAD update_all.sh
git reset HEAD ../update_all.sh
git reset HEAD ../../update_all.sh
git reset HEAD ../../../update_all.sh
git status
read -p "Nom del commit (si no vols continuar fes Ctrl+C): " name
git commit -m "$name"
git push origin master
