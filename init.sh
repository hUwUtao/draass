#!/bin/busybox ash

rsync --daemon --config=/rsyncd.conf
ncat -tlnp 80 -kc "printf \"HTTP/1.0 200 OK\\r\\nContent-Type: text/plain\\r\\n\\r\\nrsync rsync://$URL/public . -rvx --delete\""
