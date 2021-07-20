#!/bin/bash

# Install Docker CE
echo "Installing Docker..."

# Import Docker repository GPG Key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# To add the Docker Community Edition (CE) repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) stable"

# Update and install the docker package
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.Import

# Start Docker and enable auto-start on boot
sudo systemctl start docker
sudo systemctl enable docker

# Check Docker status
sudo systemctl status docker


# To check the docker version
docker version

# Docker CE
echo "Status: Docker Installed and Running"

# Install Docker Compose
echo "Installing Docker Compose..."

# Import docker-compose file
curl -s https://api.github.com/repos/docker/compose/releases/latest \
    grep browser_download_url | grep docker-compose-Linux-x86_64 \
    cut -d '"' -f 4 | wget -qi -

# Give execute permission
sudo chmod +x docker-compose-Linux-x86_64

# Move the docker-compose file to the system path /usr/local/bin
sudo mv docker-compose-Linux-x86_64 /usr/local/bin/docker-compose

# To check the docker-compose version
docker-compose version

# Docker CE
echo "Status: Docker-compose Installed and Running"
