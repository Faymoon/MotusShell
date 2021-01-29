#!/bin/bash

# Usage : verify_entry.sh <entry> <wanted_size>

if [ -z $1 ] || [ -z $2 ]
then
	echo "Error : invalid args" >&2
	exit 1
fi

if [ $(grep -c "^$1$" /usr/share/dict/french) = "1" ] && [ ${#1} -eq $2 ]
then
	echo "1"
else
	echo "0"
fi

