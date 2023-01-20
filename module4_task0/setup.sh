# Update and install 'hugo' and 'make'
apt-get update && apt-get install hugo make npm

# Install 'curl'
apt-get install curl -y

# Download latest release of 'hugo'
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb

# Install the latest version of 'hugo'
apt-get install ./install_hugo.deb
rm ./install_hugo.deb

# Initialize go project
./install.sh

# Install golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.50.1

# Install markdown lint
npm install -g markdownlint-cli

# Install markdown-link-check
npm i markdown-link-check

# Install W3C-Validator
git clone https://github.com/holbertonschool/W3C-Validator.git

# Build the website
make build
