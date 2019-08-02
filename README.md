# Docker stacks

This is a repo full of docker stack configurations for various services. The majority route traffic using traefik.

## Requirements:
* docker

## Usage

To install/update a service:

1. Copy `env.example` to `.env` in the root of the repository
2. Ensure the director specified as the `CONFIG_DIR` exists
3. Read the README file in each subdir for specific configuration settings that may be required
