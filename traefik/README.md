# Media server stack

This is a basic docker stack setup that will run traefik as a reverse proxy for other docker containers

## Requirements:
* docker

## Usage

To install/update the service:

1. Make a copy of `vars.example` as `vars` in this folder and customize it
2. Make a copy of `traefik.toml.example` as `traefik.toml` in this folder and customize it
3. Ensure that all required directories already exist
4. Run `./install` to install the service
