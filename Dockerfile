FROM docker.io/alpine:latest

RUN apk add --no-cache dnsmasq

VOLUME [ "/run", "/var/lib/misc" ]

EXPOSE 53/udp
EXPOSE 53/tcp
EXPOSE 68/udp
EXPOSE 69/udp

ENTRYPOINT ["/usr/sbin/dnsmasq", "-k", "-C", "/etc/dnsmasq.conf"]
