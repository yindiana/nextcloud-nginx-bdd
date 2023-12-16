#!/bin/bash

#chemin du service dbnextcloud : /opt/nextcloud/db
#chemin du service nextcloud : /opt/nextcloud/html
#chemin du service reverseproxydb : /opt/nginx/db
#chemin du service reverseproxy data : /opt/nginx/data
#chemin du service reverseproxy letsencrypt :/opt/nginx/letsencrypt
for paths in /opt/nextcloud/db /opt/nextcloud/html /opt/nginx/db /opt/nginx/data /opt/nginx/letsencrypt
do
        mkdir -p "$paths"
done
