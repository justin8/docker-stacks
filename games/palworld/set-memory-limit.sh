#!/bin/bash

docker container update --memory-swap 19G --memory 18G $(docker compose ps -q)
