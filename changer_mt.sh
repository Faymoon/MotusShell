#!/bin/bash

if [ time!=O ]
then
 	i=$(wc -l ./dico |cut -d " " -f 1 )
	a=$((1 + RANDOM % $i))
	head -n $a ./dico | tail -n 1
	nb_essai
fi
