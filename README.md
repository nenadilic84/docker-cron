# Docker Cron

This is a simple service that enables `cron` like functionality

# Example
```
docker run -d -e 'CRONTAB=* * * * * curl http://localhost:8080' nenadilic84/docker-cron
```
