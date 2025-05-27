#!/bin/bash
# 🐚 BASH CHEATSHEET - BASES

# 🔸 Variables
name="Alice"
age=30
echo "Nom : $name, Âge : $age"

# 🔸 Conditions
if [ $age -ge 18 ]; then
  echo "Majeur"
elif [ $age -ge 16 ]; then
  echo "Presque majeur"
else
  echo "Mineur"
fi

# 🔸 Boucles
# for
for i in {1..5}; do
  echo "Compteur : $i"
done

# while
n=0
while [ $n -lt 3 ]; do
  echo "n = $n"
  ((n++))
done

# 🔸 Fonctions
greet() {
  echo "Bonjour, $1"
}

greet "Bob"

# 🔸 Fichiers & répertoires
touch file.txt           # Créer un fichier
mkdir my_folder          # Créer un dossier
rm file.txt              # Supprimer un fichier
rm -r my_folder          # Supprimer un dossier
cp file.txt backup.txt   # Copier
mv backup.txt archive.txt  # Renommer ou déplacer

# 🔸 Affichage & redirections
echo "Hello" > hello.txt    # redirige (écrase)
echo "Again" >> hello.txt   # ajoute
cat hello.txt               # afficher contenu
head -n 5 hello.txt         # début
tail -n 5 hello.txt         # fin

# 🔸 Pipes et filtres
ps aux | grep "bash"        # cherche bash dans processus
cat file.txt | wc -l        # nombre de lignes
ls -l | less                # scrollable

# 🔸 Opérations sur chaînes
str="Hello World"
echo "${str:0:5}"           # Hello
echo "${#str}"              # longueur

# 🔸 Lecture utilisateur
read -p "Ton nom ? " username
echo "Bonjour, $username"

# 🔸 Scripts exécutables
# chmod +x script.sh
# ./script.sh

# 🔸 Commandes utiles
pwd                         # dossier courant
whoami                      # nom utilisateur
date                        # date/heure
uptime                      # depuis combien de temps la machine tourne
df -h                       # espace disque
du -sh *                    # taille dossiers/fichiers

# 🔸 Recherche de fichiers
find . -name "*.sh"         # tous les fichiers .sh
grep "mot" fichier.txt      # cherche 'mot' dans fichier
