#!/bin/sh

if [ "$1" = "" ]; then
  # Esto funciona si CMD está vacío o no se especifica en Dockerfile
  exec sngrep --calls
else
  exec "$@"
fi