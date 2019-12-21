#!/bin/bash
set -euo pipefail

host="$1"
username="$2"
password="$3"

mosquitto_sub -h "$host" -u "$username" -P "$password" -t homeassistant/bridge/networkmap/graphviz -C 1 >network_map.dot &
mosquitto_pub -h "$host" -u "$username" -P "$password" -t homeassistant/bridge/networkmap -m graphviz
wait
date="$(date '+%F-%H:%M')"
output_file="network_map-${date}.svg"
cat network_map.dot |
    sed -e 's/Xiaomi Aqara temperature, humidity and pressure sensor/AqaraTHP/g' |
    sed -e 's/Xiaomi Aqara human body movement and illuminance sensor/AqaraMotion/g' |
    sed -e 's/Xiaomi MiJia human body movement sensor/MiJiaMotion/g' |
    sed -e 's/Xiaomi MiJia door & window contact sensor/MiJiaDoor/g' |
    circo -Tsvg >"$output_file"

echo "$output_file"
