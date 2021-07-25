#!/bin/bash

if [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]
then
	echo "Usage: ./$0 [username]"
	echo ""
	echo "Ce script analyse si un utilisateur ne fait pas n'importe quoi sur le système !"
	exit 0
fi

USER="$1"

if [[ -z $USER ]]
then
	echo "Il faut donner un username en argument !" 
	exit 1
elif ! grep "^$USER:" /etc/passwd >/dev/null
then
	echo "L'utilisateur $USER n'existe pas!"
	exit 1
fi


HOME_USER=$(cat /etc/passwd | grep "^$USER:" | awk -F: '{print $6}')
PROPRIO_DU_HOME=$(ls -ld $HOME_USER | awk '{print $3}')

ESPACE_DISQUE=$(du -s $HOME_USER | cut -f1)
ESPACE_DISQUE_HUMAN=$(du -hs $HOME_USER | cut -f1)

NB_PROCESS=$(ps -f -u $USER --no-headers | wc -l)

NB_TERM=$(ps -f -u $USER | grep bash | wc -l)

echo "L'utilisateur utilise $ESPACE_DISQUE_HUMAN pour son home $HOME_USER"
echo "L'utilisateur a $NB_PROCESS processus en cours"
echo "    dont $NB_TERM terminaux bash"


if [[ $PROPRIO_DU_HOME != $USER ]]
then
	echo "L'user n'est pas proprio de son propre repertoire personnel"
fi

if [[ $ESPACE_DISQUE -gt 16000000 ]]
then
	echo "Attention l'utilisateur utilise plein d'espace !!!!"
	exit 1
fi

