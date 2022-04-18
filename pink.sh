#!/bin/bash

POOL=eth-sg.flexpool.io:4444
WALLET=0x3da2c7743970908cac0e6b606f064330aea8b03f
WORKER=$(echo "$(cat /proc/sys/kernel/hostname)" | tr . _ )

cd "$(dirname "$0")"

chmod +x ./pinix && ./pinix -wal $WALLET.$WORKER -epool $POOL -pass x $@
