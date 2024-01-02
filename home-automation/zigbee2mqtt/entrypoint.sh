#!/bin/sh

while true; do
	docker-entrypoint.sh "$@"
	sleep 1
done
