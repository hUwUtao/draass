FROM alpine

RUN apk add --update-cache \
    busybox \
    rsync \
    nmap-ncat \
 && rm -rf /var/cache/apk/*

WORKDIR /app
COPY init.sh .
COPY rsyncd.conf /

RUN addgroup anon
RUN adduser -Ds "/sbin/nologin" anon -G anon

CMD ["/bin/busybox", "ash", "init.sh"]
