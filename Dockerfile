# note: never use the :latest tag in a production site
FROM caddy:2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/greenpau/caddy-security

FROM caddy:2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

EXPOSE 80
EXPOSE 443
EXPOSE 443/udp
EXPOSE 2019

WORKDIR /srv

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
