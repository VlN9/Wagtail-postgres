
docker stop wagtail-postgres-web 
timeout /t 05
docker exec -i wagtail-postgres-db /bin/bash -c "dropdb -U demouser demo_wagtail"
timeout /t 05
docker exec -i wagtail-postgres-db /bin/bash -c "createdb -U demouser -T template0 demo_wagtail"
timeout /t 1
docker exec -i wagtail-postgres-db /bin/bash -c "pg_restore -U demouser -C -d demo_wagtail" < ./db.dump
timeout /t 1
docker compose up -d
