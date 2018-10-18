#!/bin/bash

COLOR='\033[0;32m'
NC='\033[0m' #no color

if test "$1" = 'web'; then
	read -p "Username: " usr
	read -s -p "Password: " psw
	
	cd Algebra_Lineal
	echo -e ${COLOR}Algebra_Lineal${NC}
	#(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Algebra_Lineal_Numerica
	echo -e ${COLOR}Algebra_Lineal_Numerica${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Algebra_Multilineal_i_Geometria_Projectiva
	echo -e ${COLOR}Algebra_Multilineal_i_Geometria_Projectiva${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Calcul_Integral
	echo -e ${COLOR}Calcul_Integral${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Calcul_Numeric
	echo -e ${COLOR}Calcul_Numeric${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Estructures_Algebraiques
	echo -e ${COLOR}Estructures_Algebraiques${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Fisica
	echo -e ${COLOR}Fisica${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Programacio_Matematica
	echo -e ${COLOR}Programacio_Matematica${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Teoria_de_la_Probabilitat
	echo -e ${COLOR}Teoria_de_la_Probabilitat${NC}
	(printf %s\\n%s\\n "$usr" "$psw"; cat) | ./upload_pdf
	cd ../Topologia
	echo -e ${COLOR}Topologia${NC}
else
	cd Algebra_Lineal
	echo -e ${COLOR}Algebra_Lineal${NC}
	make silentall
	cd ../Algebra_Lineal_Numerica
	echo -e ${COLOR}Algebra_Lineal_Numerica${NC}
	make silentall
	cd ../Algebra_Multilineal_i_Geometria_Projectiva
	echo -e ${COLOR}Algebra_Multilineal_i_Geometria_Projectiva${NC}
	make silentall
	cd ../Calcul_Integral
	echo -e ${COLOR}Calcul_Integral${NC}
	make silentall
	cd ../Calcul_Numeric
	echo -e ${COLOR}Calcul_Numeric${NC}
	make silentall
	cd ../Estructures_Algebraiques
	echo -e ${COLOR}Estructures_Algebraiques${NC}
	make silentall
	cd ../Fisica
	echo -e ${COLOR}Fisica${NC}
	make silentall
	cd ../Programacio_Matematica
	echo -e ${COLOR}Programacio_Matematica${NC}
	make silentall
	cd ../Teoria_de_la_Probabilitat
	echo -e ${COLOR}Teoria_de_la_Probabilitat${NC}
	make silentall
	cd ../Topologia
	echo -e ${COLOR}Topologia${NC}
fi
