# Docker Cron

This is a simple service that enables `cron` like functionality

# Example

```
docker run -d -e 'CRONTAB=* * * * * curl http://test-server' nenadilic84/docker-cron
```

Each `crontab` line should be separated with new line character `\n`

