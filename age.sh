#!/bin/bash

CURRENT_YEAR=$(date +%Y)

echo -e "En quelle année est-tu né ? "
read YEAR
AGE=$(($CURRENT_YEAR-$YEAR))

if [[ $YEAR -lt 1900 ]]
then
	echo "Heuuuuu t'es sur ?!"
	exit 1
elif [[ $YEAR -gt $CURRENT_YEAR ]]
then
	echo "Tu viens du turfu ?!!?"
	exit 1
fi

echo "Tu as $AGE ans!"