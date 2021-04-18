#!/bin/bash
      
    clear
if ! [[ -e error.logs ]] 
then
	wget http://www.collados.org/asix2/m06/uf2/error.logs
fi

echo -n "Dia (DD): "
read dia
echo -n "Mes (MM): "
read mes
echo -n "ANY (YYY): "
read any

datafitxer=$any$mes$dia

if ! [[ -e  ~/FitxConfBackup ]]
then
	mkdir ~/FitxConfBackup
fi

if grep -E '('$mes' '$dia'.*'$any')' error.logs > ~/FitxConfBackup/err$datafitxer.log
then
	echo "Fitxer err$datafitxer.log guardat dins ~/FitxConfBackup"
else
	echo "No s'ha trobat cap error en la data especificada"
	exit 1
fi
exit 0
