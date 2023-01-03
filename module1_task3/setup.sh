# Spawn a sandboxed environment with ubuntu 18.04
docker run --rm --tty --interactive --volume=$(pwd):/app --workdir=/app ubuntu:18.04 /bin/bash

# Install 'hugo' and 'make'
apt-get update && apt-get install -y hugo make

# Build the website
make build