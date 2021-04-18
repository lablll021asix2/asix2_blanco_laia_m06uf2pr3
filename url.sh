#!/bin/bash
      
    clear

regex='^(ht|f)tp(s?)\:\/\/[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)( [a-zA-Z0-9\-\.\?\,\’\/\\\+&amp;%\$#_]*)?$'
echo -n " URL a consultar: "
read url

if [[ $url =~ $regex ]]
then
	firefox $url
else
	echo "La URL introduïda és incorrecte"
	exit 1
fi
exit 0
