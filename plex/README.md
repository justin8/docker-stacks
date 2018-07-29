# Media server stack

This is a basic docker stack setup that will run a plex media server.

Docker swarm doesn't support custom network modes yet, and plex refuses to let you play externally when running in an overlay network, even with all the port forwards set up :(

## Requirements:
* docker

## Usage

To run the service:

1. Make a copy of `vars.example` as `vars` in this folder and customize it
2. Ensure that all required directories already exist
3. Run `./start` to start the service with docker-compose.
4. On first install, some things will need to be manually set up prior to opening the service up; i.e. passwords for the services. Keep in mind that transmission overwrites the config on shutdown, so only edit it's config while offline.
