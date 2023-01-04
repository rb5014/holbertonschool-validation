#!/bin/bash
echo 'apt-get update && apt-get install hugo make && apt-get install curl -y && mkdir /hugo &&
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb &&
apt-get install ./install_hugo.deb &&
make build' | docker run --rm  --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash 