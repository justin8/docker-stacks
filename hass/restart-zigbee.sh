#!/bin/bash

# Used as a cron job to restart daily:
# 0 4 * * *  daily /root/docker-stacks/hass/restart-zigbee.sh

cd "$(dirname "$(readlink -f "$0")")"

docker-compose restart mqtt
docker-compose restart zigbee2mqtt
