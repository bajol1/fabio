#!/bin/bash

POOL=ethash.kupool.com:1800
WALLET=fabio
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
