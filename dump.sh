#!/bin/bash

docker stop wagtail-postgres-web

docker exec -i wagtail-postgres-db bin/bash -c "dropdb -U demouser demo_wagtail"
docker exec -i wagtail-postgres-db bin/bash -c "createdb -U demouser -T template0 demo_wagtail"

docker exec -i wagtail-postgres-db bin/bash -c "pg_restore -U demouser -C -d demo_wagtail" < ./db.dump
docker compose up -d
