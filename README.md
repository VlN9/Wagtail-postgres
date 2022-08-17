# Wagtail-postgres
<a id="anchor"></a>

This is the Wagtail web-service with PostgreSQL database in docker-compose.

## How to use:

Open terminal or command line.

Change your dir in project dir.

Enter in terminal:
```
$ docker compose up -d --build
```
>This command up your service.<br> 
Flag ___-d___ run process in background.<br> 
Flag ___--build___ build images before runing container.<br>
After this you should run container without using flag ___--build___.

You can get access into a container use next command:
```
$ docker exec -it <CONTAINER ID> /bin/ash
```

>With this command you can edit Wagtail service and to save a change.

How to stop:

Enter in terminal next command:
```
$ docker compose stop
```
It's all. Your project is stopped. 

## Goodluck 
[scrollup](#anchor) 
