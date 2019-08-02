# Netdata stack

This is a basic docker stack setup that will run (Netdata)[https://github.com/firehol/netdata] in a container, on port 19999.

## Requirements:
* docker

## Usage

To run the service:

1. Make a copy of `netdata.conf.example` as `netdata.conf` in this folder and customize it
2. Run `./install` to install and start the service with docker-compose.
