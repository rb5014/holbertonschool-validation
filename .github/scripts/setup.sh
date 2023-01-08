# Update and install 'hugo' and 'make'
sudo apt-get update && sudo apt-get install hugo

# Install 'curl'
sudo apt-get install curl -y

# Download latest release of 'hugo'
sudo curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb

# Install the latest version of 'hugo'
sudo apt-get install ./install_hugo.deb

