#!/bin/bash

#docker exec -i wagtail-postgres-db-1 bin/bash -c "psql -U demouser demo_wagtail" < ./db.dump

docker stop wagtail-postgres-web-1

docker exec -i wagtail-postgres-db-1 bin/bash -c "dropdb -U demouser demo_wagtail"
docker exec -i wagtail-postgres-db-1 bin/bash -c "createdb -U demouser -T template0 demo_wagtail"

docker exec -i wagtail-postgres-db-1 bin/bash -c "pg_restore -U demouser -C -d demo_wagtail" < ./db.dump
docker compose up -d
