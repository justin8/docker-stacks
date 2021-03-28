#!/bin/bash

cd /chia-blockchain
. ./activate

# Init and upgrade to current version
chia init

# Fork off the chia node process
chia start node

# Logs are put out to stdout via the forked processes, so we just let them run in the background
tail -f /dev/null