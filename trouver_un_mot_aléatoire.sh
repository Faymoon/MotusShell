#!/bin/bash

i=$(grep -c "^.\{$1\}$" ./dico |cut -d " " -f 1 )

a=$((1 + RANDOM % $i))

grep "^.\{$1\}$" ./dico | head -n $a | tail -n 1
