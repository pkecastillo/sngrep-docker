sngrep – Ncurses SIP Messages flow viewer (docker version)
==========================================================

## Para mejor uso de la herramienta sngrep visitar el sitio oficial https://github.com/irontec/sngrep

https://github.com/sipcapture/homer/wiki/Examples:-sngrep/d16479d8c5a0304aab789c038d21492b91ff5197

## Build image

`docker build . -t pkecastillo/sngrep-sniffer`

## Start container

`docker run -ti --rm --privileged -e PORT_HOMER=9060 -e IP_SERVER_HOMER=XXX.XXX.XXX.XXX pkecastillo/sngrep-sniffer`

## Docker Compose

Edit the docker-compose.yml in each ENV with the correct info.

`docker compose up -d`



Docker Compose:

```YAML
version: '2'
services:
  heplify:
    image: "pkecastillo/sngrep-sniffer"
    container_name: "sngrep-sniffer"
    environment:
      IP_HOMER: XXX.XXX.XXX.XXX
      PORT_HOMER: 9060
```