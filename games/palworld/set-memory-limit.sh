#!/bin/bash

docker container update --memory-swap 33G --memory 32G $(docker compose ps -q)
