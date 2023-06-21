#!/bin/bash
#
# Usage: ./update.sh APP_NAME [--no-restart]
#

app="$1"
no_restart="$2"

if [[ -z $app ]]; then
	echo "You must provide the name of an app to update"
fi

cd "$(readlink -f "$(dirname "$0")")/$app"

docker-compose pull
docker-compose build

if [[ -z $no_restart ]]; then
	docker-compose down
	docker-compose up -d
fi
