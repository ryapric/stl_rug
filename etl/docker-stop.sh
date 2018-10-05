#!/usr/bin/env sh

docker container stop pg_source > /dev/null && docker container rm pg_source > /dev/null
docker container stop pg_target > /dev/null && docker container rm pg_target > /dev/null
