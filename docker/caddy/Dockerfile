FROM caddy

RUN caddy add-package github.com/greenpau/caddy-security

COPY docker/caddy/Caddyfile /etc/caddy/Caddyfile

WORKDIR /etc/caddy/sites-enabled
COPY docker/caddy/sites-enabled/* /etc/caddy/sites-enabled

ENTRYPOINT ["caddy"]
CMD ["run", "--config", "/etc/caddy/Caddyfile"]
