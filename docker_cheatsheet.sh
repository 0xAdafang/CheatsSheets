# 🐳 DOCKER CHEATSHEET - BASES

# 🔸 Informations système
docker version              # Version du client/serveur
docker info                 # Infos système Docker

# 🔸 Images
docker images               # Liste des images locales
docker pull nginx           # Télécharger une image
docker rmi nginx            # Supprimer une image

# 🔸 Conteneurs
docker ps                   # Conteneurs actifs
docker ps -a                # Tous les conteneurs
docker run -it ubuntu bash  # Lancer un conteneur interactif
docker run -d nginx         # Lancer en arrière-plan
docker stop <id>            # Stopper
docker rm <id>              # Supprimer un conteneur

# 🔸 Volumes
docker volume ls            # Liste des volumes
docker volume create monvolume    # Créer un volume
docker run -v monvolume:/data     # Monter un volume

# 🔸 Réseaux
docker network ls           # Liste des réseaux
docker network create monreseau
docker run --network monreseau ...

# 🔸 Fichiers
docker cp fichier.txt container:/chemin/
docker exec -it container bash    # Terminal dans un conteneur

# 🔸 Dockerfile (exemple de base)
# FROM node:18
# WORKDIR /app
# COPY . .
# RUN npm install
# CMD ["node", "index.js"]

# 🔸 Build & Run d’une image
docker build -t mon-app .
docker run -p 3000:3000 mon-app

# 🔸 docker-compose.yml (extrait)
# version: '3'
# services:
#   web:
#     image: nginx
#     ports:
#       - "8080:80"
#   db:
#     image: postgres
#     environment:
#       POSTGRES_PASSWORD: example

# 🔸 Commandes Compose
docker-compose up -d        # Lancer tous les services en arrière-plan
docker-compose down         # Stopper et supprimer les services
docker-compose logs         # Afficher les logs
docker-compose ps           # Voir l’état des services
