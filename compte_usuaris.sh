#!/bin/bash
    clear
    
function compte {
	local fitxer
	local ncompt
	local proba
	
	ncompt=0
	for fitxer in $1/*
	do
		if [[ -s $fitxer ]] &&  [[ -x $fitxer ]]  
		then                                      
			(( ncompt++ ))	
		fi
	done
	
	echo "Numero de fitxers de lectura i més grans que 0: "$ncompt

	return 0 #
}	
echo -n "Indica el directori: "
read nom
compte $nom
echo "FINALITZAT"
exit 0





