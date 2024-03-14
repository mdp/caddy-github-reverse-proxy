#!/bin/bash

set -o allexport
source .env
set +o allexport

docker run --rm -it -d --name caddy --env-file ./.env -p$LISTENING_IP:80:80 -p$LISTENING_IP:443:443 -p$LISTENING_IP:443:443/udp -v $PWD/Caddyfile:/etc/caddy/Caddyfile -v caddy_data:/data -v $PWD/www:/www mdp/caddy
