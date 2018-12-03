#!/bin/bash 

jour=$(date '+%d %B %Y')
heure=$(date '+%Hh%M') 

echo "Bienvenue $USERNAME ! Nous sommes le $jour et il est actuellement $heure."   

read -p "Quel répertoire vous intéresse aujourd'hui ?" rep
echo "Le répertoire fourni est bien : $rep"

cd $rep
echo "Tous les fichiers de $rep modifiés il y a moins d'une semaine sont :"
find . -type f -mtime -7

