# Media server stack

This is a basic docker stack setup that will run grafana, hooking in to traefik for reverse proxying

## Requirements:
* docker

## Usage

To install/update the service:

1. Make a copy of `grafana.conf.example` as `grafana.conf` in this folder and customize it
2. Ensure that all required directories already exist
3. Run `./install` to install the service
4. On first install, some things will need to be manually set up prior to opening the service up; i.e. passwords for the services. Keep in mind that transmission overwrites the config on shutdown, so only edit it's config while offline.
