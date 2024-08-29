#!/bin/bash

read -p "How many machines?: " num


dirmaker() {
	read -p "Machine name or IP: " name

	mkdir -p ~/"$name"
	mkdir -p ~/"$name"/Scans
	mkdir -p ~/"$name"/Scans/nmap
	mkdir -p ~/"$name"/Loot/users
	mkdir -p ~/"$name"/Loot/passwords
	
}

i=0

while (( "$i" < "$num" ));
do
	dirmaker
	((i++))
done
