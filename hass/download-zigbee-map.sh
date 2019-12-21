#!/bin/bash

mosquitto_sub -t homeassistant/bridge/networkmap/graphviz -C 1 >network_map.dot &
mosquitto_pub -t homeassistant/bridge/networkmap -m graphviz
wait
date="$(date '+%F-%H:%M')"
output_file="network_map-"${date}.svg"
cat network_map.dot | dot -Tsvg > "$output_file"

echo "$output_file"