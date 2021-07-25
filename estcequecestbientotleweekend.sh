#!/bin/bash

JOUR=$(date +%u)
HEURE=$(date +%k)
JEUDI=4
VENDREDI=5


if [[ $JOUR -le $JEUDI ]]
then
	echo "Non ¯\\_(ツ)_/¯ "
elif [[ $JOUR -eq $VENDREDI ]] && [[ $HEURE -lt 17 ]]
then
	echo "Bientôt, mais il faut travailler encore un peu!"
else
	echo "Ouiiii c'est le weekend!"
fi


