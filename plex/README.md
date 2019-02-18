# Media server stack

This is a basic docker stack setup that will run a plex media server.

Docker swarm doesn't support custom network modes yet, and plex refuses to let you play externally when running in an overlay network, even with all the port forwards set up :(

## Requirements:
* docker

## Usage

To run the service:

1. Make a copy of `vars.example` as `vars` in this folder and customize it
2. Ensure that all required directories already exist
3. Run `./start` to start the service with docker-compose. (This image currently requires things that are not supported in docker swarm mode)
4. Call `./start` while in the current directory on startup through whatever means (in the worst case, rc.local)
