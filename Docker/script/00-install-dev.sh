#!/usr/bin/env bash

# Build app and api containers
docker-compose -f docker/dev.docker-compose.yml build

# Launch the db alone once and give it time to create db user and database
# This is a quickfix to avoid waiting for database to startup on first execution (more details [here](https://docs.docker.com/compose/startup-order/))

docker-compose -f docker/dev.docker-compose.yml up -d db
sleep 5
docker-compose -f docker/dev.docker-compose.yml stop db
