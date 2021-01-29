#!/bin/bash

#TODO : Appeler le menu et récupérer la difficulté

#echo -en "\e[y;xftext"

mot_a_deviner=$(./trouver_un_mot_aléatoire.sh)
mot_a_deviner="pomme"

essais=()

echo $mot_a_deviner

draw()
{
	echo -en "\e[20;20fBienvenue dans le jeu du Motus"

	for i in $(seq 0 $((${#essais[@]}-1)))
	do
		echo "${essais[$i]}"
		local y=$((25+$i))
		echo -en "\e[$y;20f"
		./affichageCouleur.sh "${essais[$i]}" $mot_a_deviner
	done
}

while [ 1 -eq 1 ]
do
	clear
	draw

	y=$((${#essais[@]}+25))
	echo -en "\e[$y;20f"
	read -n ${#mot_a_deviner} entry
	if [ $(./verify_entry.sh $entry ${#mot_a_deviner}) = "0" ]
	then
		continue
	fi

	essais+=($entry)
done
