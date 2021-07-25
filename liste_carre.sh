#!/bin/bash

# =====================
# Avec une boucle for:
# =====================

for MON_ENTIER in $(seq 1 50)
do
	RESULTAT=$(($MON_ENTIER*$MON_ENTIER))
	echo "Résultat pour $MON_ENTIER vaut: $RESULTAT"
done

# =====================
# Avec une boucle while:
# =====================

MON_ENTIER=0
while [[ $MON_ENTIER -le 50 ]]
do
	RESULTAT=$(($MON_ENTIER*$MON_ENTIER))
	
	echo "Résultat pour $MON_ENTIER vaut $RESULTAT"
	MON_ENTIER=$(($MON_ENTIER+1))
done


