#!/bin/sh

[ -z "$IP_HOMER" ] && { echo "Error: IP_HOMER no está definida"; exit 1; }
[ -z "$PORT_HOMER" ] && { echo "Error: PORT_HOMER no está definida"; exit 1; }

# ENV
export IP_HOMER
export PORT_HOMER

exec sngrep -H udp:$IP_HOMER:$PORT_HOMER --no-interface -q