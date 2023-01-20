# Update and install 'hugo' and 'make'
apt-get update && apt-get install hugo make

# Install 'curl'
apt-get install curl -y

# Download latest release of 'hugo'
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb

# Install the latest version of 'hugo'
apt-get install ./install_hugo.deb
rm ./install_hugo.deb

# Build the website
make build
