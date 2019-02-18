# Netdata stack

This is a basic docker stack setup that will run (Netdata)[https://github.com/firehol/netdata] in a container, on port 19999.

## Requirements:
* docker

## Usage

To run the service:

1. Make a copy of `netdata.conf.example` as `netdata.conf` in this folder and customize it
2. Run `./start` to start the service with docker-compose. (This image currently requires things that are not supported in docker swarm mode)
3. Call `./start` while in the current directory on startup through whatever means (in the worst case, rc.local)
