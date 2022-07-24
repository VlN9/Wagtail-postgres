# Wagtail-postgres

It's Wagtail web-service with PostgreSQL database.

#How to use

Enter in terminal:
$ docker compose up -d --build
-d - for up your web in background.
--build - for build images before starting containers.
After that you don't needed use this flag.

$ docker exec -it <CONTAINER ID> /bin/ash
This command make you acces in shell terminal in container.
Using this command you may to make a changes in web-servise.

#Acces in admin account
login: root
Password: 123

Goodluck
