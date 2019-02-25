# unifi controller stack

This is a basic docker stack setup that will run nginx, sonarr, couchpotato, jackett and transmission.

## Requirements:
* docker

## Usage

To install/update the service:

1. Make a copy of `env.example` as `.env` in this folder and customize it
2. Ensure that all required directories already exist
3. Run `./install` to install the service
