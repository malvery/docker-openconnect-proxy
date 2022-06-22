#!/bin/sh
/usr/bin/glider -listen :${HTTP_SOCKS5_PROXY_PORT} &
echo "http/socks5 proxy server: $(hostname -i):${HTTP_SOCKS5_PROXY_PORT}"

"$@" --config "/etc/openconnect/config"
