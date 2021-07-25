#!/bin/bash


NOMBRE_A_TROUVER=$(($RANDOM % 100))
echo "(Le vrai nombre à trouver est : $NOMBRE_A_TROUVER)"


# TANT QUE la réponse donnée n'est pas la bonne
while [[ $REPONSE != $NOMBRE_A_TROUVER ]]
do

	# Demander une réponse
	echo -n "Devine le nombre auquel je pense! "
	read REPONSE
	
	# Si le nombre est plus grand, le dire
	if [[ $NOMBRE_A_TROUVER -gt $REPONSE ]]
	then
		echo "Non, le nombre auquel je pense est plus grand !"
	# Sinon, dire que le nombre est plus petit 
	elif [[ $NOMBRE_A_TROUVER -lt $REPONSE ]]
	then
		echo "Non, le nombre auquel je pense est plus petit !"
	fi
	
# (fin de la boucle)
done

echo "Bravo je pense bien à $NOMBRE_A_TROUVER !"

