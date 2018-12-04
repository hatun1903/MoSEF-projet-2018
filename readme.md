# Projet Linux - Hatun ÖZGÜ

## Objectif

Ce `readme.md` permet d'expliquer comment exécuter les résultats attendus en local mais aussi depuis l'interface web GitHub.

## Prérequis
1. Créer votre compte sur [GitHub](https://github.com).
2. Configurer Git : 
 ```
 git config --global user.name "Prenom Nom"  
 git config --global user.email "votre@adresse.email"
 ```
3. Vérifier que Git est bien installé : `git --version`.


## Etapes du projet

*Question 1:* Afin de forker le dépôt sur notre compte GitHub, il est nécessaire de :
- aller sur le lien suivant : [https://github.com/ambalde/MoSEF-projet-2018](https://github.com/ambalde/MoSEF-projet-2018)
- cliquer sur "Fork" (situé en haut à droite) afin de copier un repo d'un autre compte, ici celui de **ambalde**, sur notre propre compte.


*Question 2:* Pour cloner notre copie en local, il suffit de copier le lien apparu (juste après avoir forker) en cliquant sur "Clone or download".
On aura juste à se rendre sur notre terminal et éxecuter la commande suivante :
```
git clone lien repo distant 
```
Dans mon cas : 
```
git clone https://github.com/hatun1903/MoSEF-projet-2018.git
```

  
*Question 3:* On crée le script `fich_semaine_derniere.sh` grâce à la commande `vim` qui est un éditeur de texte. 
- Attention : ne pas oublier d'indiquer au début le shell utilisé, il s'agira de `bash` ici.
- On utilise une variable d'environnement pour afficher le nom de l'utilisateur, l'heure et la date.
- Enfin pour lancer ce fichier, il suffit d'utiliser la commande `chmod` ou plus particulièrement la commande `bash` directement.

Une fois le script éxecuté, ce dernier annonce le moment de son éxécution (date et heure) tout en souhaitant la bienvenue à l'utilisateur qu'il l'a lancé. Il lui demandera par la suite quel répertoire l'intéresse et affichera le répertoire fourni.


*Question 4:* Tout d'abord, on pousse le script dans la zone de transit : 
``` 
git add fich_semaine_derniere.sh 
```
On peut connaître l'état de notre repository avec 
``` 
git status 
```
Puis, on pousse le script dans le repo local c'est-à-dire on le commite en veillant à bien laisser un petit commentaire entre guillemets 
```
git commit -m "Ajout du fichier .sh" 
```
Enfin, on pousse le script dans le repo distant c'est-à-dire on pousse les modifications dans le dépôt distant
``` 
git push -u origin master 
```


*Question 5:* Créons une nouvelle branche appelée new_branche
```
git branch new_branche
```

  
*Question 6:* On modifie notre script en ajoutant les commandes permettant l'affichage de tous les fichiers du répertoire saisi par l'utilisateur modifiés il y a moins d'une semaine.
On rappelle que la commande `cd` permet de changer de répertoire et `find -type f -mtime -7` va chercher tous les fichiers modifiés lors des 7 derniers jours.

A partir de là, le script nous fournira également la liste des fichiers qui ont été modifiés il y a moins d'une semaine. 


*Question 7:* Pour envoyer les changements dans le repo distant:
- On pousse le script dans le repo local et on commite 
```
git add fich_semaine_derniere.sh
```

```
git commit -m "Ajout de l'affichage des fichiers modifiés il y a moins d'une semaine"
```
- On pousse dans le repo distant 
git push origin new_branche
**Il faut faire attention à bien récupérer les modifications sur la nouvelle branche créeé.**


*Question 8:* On se redirige vers notre compte GitHub pour réaliser une pull request et la fusionner.
Prendre soin d'aller sur la copie présente sur **notre propre compte**
On clique sur "Pull request".
Choisissons bien de comparer notre nouvelle branche créee et notre branche initial master ( **attention: bien veuillez à ne pas prendre celle du créateur du repo**)
On peut laisser des commentaires d'ailleurs lors de cette pull request.

Ensuite, on clique sur "Create pull request" puis sur "Merge pull" afin de créer la requête et la fussioner.


*Question 9:* En local, pour la fusion des deux branches, il faut d'abord basculer sur la branche master. Pour cela:
```
git checkout master
```

on peut vérifier que le basculement a bien été réalisé avec : 
```
git branch 
```

Une fois s'être assuré d'être de nouveau sur notre branche master, on peut alors fusionner les deux branches :
```
git merge new_branche
```


*Question 10:* Pour la  suppression du fichier `Consignes.md` et pour pousser ces modifications vers GitHub :

```
rm -rf Consignes.md
```
```
git add Consignes.md
```
```
git commit -m "Suppression du fichier .md"
```
```
git pull
```
```
git push origin master
```


