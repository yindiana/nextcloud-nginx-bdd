Le port sur les services permet a nginx de savoir vers quel service rediriger quand on a un nom de domaine.

1 - installer docker
2 - installer portainer
3 - lancer le script volume_creation.sh
4 - deployer le docker-compose
5 - configurer nextcloud sur le port défini dans le docker-compose
6 - configurer votre DNS chez votre fournisseur, par exemple vpn, pour avoir un DNS qui pointe vers votre ip publique
7 - configurer nginx sur le port 81 de l'ip et ajouter un host qui lie le port de nextcloud et le DNS
8 - configurer l'ouverture de port de votre box internet afin qu'il autorise le port de ngnix vers internet
9 - Si une fois tout en place vous avez une erreur lié a la confiance, il faut configurer les fichiers nextcloud afin d'autoriser d'accéder à votre serveur depuis votre DNS
