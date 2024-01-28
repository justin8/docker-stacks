#!/bin/bash

docker container update --memory-swap 10G --memory 8G $(docker compose ps -q)
