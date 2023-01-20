# Update and install 'hugo' and 'make'
apt-get update && apt-get install -y hugo make

# Install 'curl'
apt-get install curl -y

# Download latest release of 'hugo'
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb

# Install the latest version of 'hugo'
apt-get install -y ./install_hugo.deb
rm ./install_hugo.deb

# Initialize go project
./install.sh

# Install golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.50.1

# Install zip
apt install zip -y

# Build website
make build