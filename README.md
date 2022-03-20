# Docker stacks

This is a repo full of docker stack configurations for various services. The majority route traffic using traefik.

## Requirements:
- docker
- docker-compose

## Usage
Make a copy of `env.example` as `.env` and fill in the blanks.

Every service/group of services is in it's own docker-compose stack. With docker allowing for restart:always tasks to continue to run post-reboot you can just do a `docker-compose up -d` to bring a service online.

Data for services is in subfolders of themselves and added to a local `.gitignore`
