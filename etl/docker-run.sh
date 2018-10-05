#!/usr/bin/env sh

# Try and stop/remove containers from previous runs
sh docker-stop.sh

docker container run \
    -d \
    -p 5432:5432 \
    -e POSTGRES_USER="postgres" \
    -e POSTGRES_PASSWORD="postgres" \
    -v pg_data:/var/lib/postgresql/data/ \
    --name pg_source \
    postgres:alpine

docker container run \
    -d \
    -p 5433:5432 \
    -e POSTGRES_USER="postgres" \
    -e POSTGRES_PASSWORD="postgres" \
    -v pg_data2:/var/lib/postgresql/data/ \
    --name pg_target \
    postgres:alpine
