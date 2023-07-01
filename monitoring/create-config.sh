#!/bin/bash

# Prometheus explicitly doesn't support environment variable substitution and expects all users
# to be using a configuration management tool to generate the config. I don't want to go to all
# that effort, so just run this script to take the input `prometheus-template.yml` and substitute
# environment variables from `.env` in to the template

set -o allexport
source .env

envsubst < prometheus-template.yml > prometheus.yml
