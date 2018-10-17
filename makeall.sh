#!/bin/bash

if test "$1" = 'web'; then
	read -p "Username: " usr
	read -s -p "Password: " psw
	
	cd Algebra_Lineal
	echo Algebra_Lineal
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Algebra_Lineal_Numerica
	echo Algebra_Lineal_Numerica
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Algebra_Multilineal_i_Geometria_Projectiva
	echo Algebra_Multilineal_i_Geometria_Projectiva
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Calcul_Integral
	echo Calcul_Integral
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Calcul_Numeric
	echo Calcul_Numeric
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Estructures_Algebraiques
	echo Estructures_Algebraiques
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Fisica
	echo Fisica
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Programacio_Matematica
	echo Programacio_Matematica
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Teoria_de_la_Probabilitat
	echo Teoria_de_la_Probabilitat
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Topologia
	echo Topologia
else
	cd Algebra_Lineal
	echo Algebra_Lineal
	make silentall
	cd ../Algebra_Lineal_Numerica
	echo Algebra_Lineal_Numerica
	make silentall
	cd ../Algebra_Multilineal_i_Geometria_Projectiva
	echo Algebra_Multilineal_i_Geometria_Projectiva
	make silentall
	cd ../Calcul_Integral
	echo Calcul_Integral
	make silentall
	cd ../Calcul_Numeric
	echo Calcul_Numeric
	make silentall
	cd ../Estructures_Algebraiques
	echo Estructures_Algebraiques
	make silentall
	cd ../Fisica
	echo Fisica
	make silentall
	cd ../Programacio_Matematica
	echo Programacio_Matematica
	make silentall
	cd ../Teoria_de_la_Probabilitat
	echo Teoria_de_la_Probabilitat
	make silentall
	cd ../Topologia
	echo Topologia
fi
