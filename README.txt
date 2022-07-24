Wagtail-postgres

This is the Wagtail web-service with PostgreSQL database in docker-compose.

How to use

Enter in terminal

$ docker compose up -d --build
This command up your service. 
Flag run process in background. 
Flag "--build" build image before starting container.
After this you should run container without using flag "--build".

Access in container

Enter command
$ docker exec -it <CONTAINER ID> /bin/ash
This command give you access into container.
With this command you can edit Wagtail service and to save a change.

Access as admin

Login:root
Password:123

Goodluck 
 
