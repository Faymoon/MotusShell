#!/bin/bash

affichageCouleur()
{

red=`tput setab 1`
verte=`tput setab 2`
jeune=`tput setab 3`

#mp=mot proposee, md=mot a diviner

mp=$1
md=$2

	if [ ! ${#mp} -eq ${#md} ]
	then
		return 1
	fi

	for i in $(seq 1 ${#mp})
	do
		lettremp="$(echo $mp | cut -c $i)"
		lettremd="$(echo $md | cut -c $i)"
		if [ "$(echo $mp | cut -c $i)" == "$(echo $md | cut -c $i)" ]
		then
			echo -ne "${verte} $(echo $mp | cut -c $i)"
		elif [ "$(echo $md | grep $lettremp | wc -l)" -ge 1 ]
		then
			echo -ne "${jeune} $(echo $mp | cut -c $i)"
		else
			echo -ne "${red} $(echo $mp | cut -c $i)"
		fi
	done
	echo $(tput sgr0)

}

affichageCouleur holaa hello
