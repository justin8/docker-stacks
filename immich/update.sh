#!/bin/bash
curl -Lo docker-compose.orig.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml
curl -Lo hwaccel.transcoding.yml https://github.com/immich-app/immich/releases/latest/download/hwaccel.transcoding.yml
curl -Lo hwaccel.ml.yml https://github.com/immich-app/immich/releases/latest/download/hwaccel.ml.yml
curl -Lo env.example https://github.com/immich-app/immich/releases/latest/download/example.env

cat <<-EOF >>env.example

DOMAIN=
EOF
