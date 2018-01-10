FROM alpine:latest

RUN \
    apk update && \
    apk --no-cache add ca-certificates wget bash curl

COPY crontab /etc/crontabs/root

RUN echo '#!/bin/sh' > start && \
    echo 'echo -e "$CRONTAB\n" >> /etc/crontabs/root' >> start && \
    echo 'crond -c /etc/crontabs -L /dev/stdout -f' >> start && \
    chmod +x start

CMD ["/start"]
