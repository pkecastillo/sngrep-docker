#sngrep – NCurses SIP Messages flow viewer (docker version)

sngrep verison docker.

##Para mejor uso de la herramienta sngrep visitar el sitio oficial https://github.com/irontec/sngrep

##Build

```
docker build . -t sngrep
```
##Iniciar contenedor docker

```
docker run -ti --rm --privileged sngrep -r
```