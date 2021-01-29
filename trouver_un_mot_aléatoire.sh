#!/bin/bash

i=$(wc -l ./dico |cut -d " " -f 1 )

a=$((1 + RANDOM % $i))

head -n $a ./dico | tail -n 1
