#!/bin/bash



i=$(wc -l ./list |cut -d " " -f 1 )

a=$((1 + RANDOM % $i))

head -n $a ./list | tail -n 1








