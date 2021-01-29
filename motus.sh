#!/bin/bash

#TODO : Appeler le menu et récupérer la difficulté

#echo -en "\e[y;xftext"

mot_a_deviner=$(./trouver_un_mot_aléatoire.sh $1)
#mot_a_deviner="pomme"

essais=()

echo $mot_a_deviner
sleep 1

draw()
{
	echo -en "\e[20;20fBienvenue dans le jeu du Motus"
	echo -en "\e[21;20fLe mot contient ${#mot_a_deviner}"

	echo -en "\e[21;50fVous avez fait ${#essais[@]} essais"

	for i in $(seq 0 $((${#essais[@]}-1)))
	do
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
	read entry
	if [ $(./verify_entry.sh $entry ${#mot_a_deviner}) = "0" ]
	then
		continue
	fi

	if [ $entry = $mot_a_deviner ]
	then
		victoire=1
		break
	fi

	essais+=($entry)
done

if [ $victoire -eq 1 ]
then
	y=$((${#essais[@]}+25))
	echo -e "\e[$y;20fVous avez gagné bravo !"
fi
