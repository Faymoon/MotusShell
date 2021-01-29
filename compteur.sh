#!/bin/bash

nb_essai()
{
	nb=0
	a="pomme"
	gagner=0

	while [ $nb -le 4 ]
	do 
		read var
		if [[ $a != $var ]]

		then nb=$(($nb + 1))
		c=$((5 - $nb))
		echo "il vous reste $c fois" > /dev/tty

		else gagner=1
			break 	
		fi
	done
	echo "$gagner"
}


gagner=$(nb_essai)

if [[ $gagner = 1 ]]
then echo "Gagner"
else echo " Gameover" 
fi





