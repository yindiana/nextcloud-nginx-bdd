Le port sur les services permet a nginx de savoir vers quel service rediriger quand on a un nom de domaine.

1 - installer docker
2 - installer portainer
3 - monter un partage nfs via /Scripts/LINUX/montage_nfs_client.sh sur les dossiers suivants afin que les données des volumes soient stockés sur le NAS
4 - lancer le script volume_creation.sh avec les chemins suivants :
  #/opt/nextcloud/db /opt/nextcloud/html /opt/nginx/db /opt/nginx/data /opt/nginx/letsencrypt
  #chemin du service dbnextcloud : /opt/nextcloud/db
  #chemin du service nextcloud : /opt/nextcloud/html
  #chemin du service reverseproxydb : /opt/nginx/db
  #chemin du service reverseproxy data : /opt/nginx/data
  #chemin du service reverseproxy letsencrypt :/opt/nginx/letsencrypt
5 - deployer le docker-compose
6 - configurer nextcloud sur le port défini dans le docker-compose
7 - configurer votre DNS chez votre fournisseur, par exemple vpn, pour avoir un DNS qui pointe vers votre ip publique
8 - configurer nginx sur le port 81 de l'ip et ajouter un host qui lie le port de nextcloud et le DNS
9 - configurer l'ouverture de port de votre box internet afin qu'il autorise le port de ngnix vers internet
10 - Si une fois tout en place vous avez une erreur lié a la confiance, il faut configurer les fichiers nextcloud afin d'autoriser d'accéder à votre serveur depuis votre DNS


