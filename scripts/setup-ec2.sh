#!/bin/bash
set -e

echo "Installing Docker on EC2 instance..."

# Update system
sudo yum update -y || sudo apt-get update -y

# Install Docker
if command -v yum &> /dev/null; then
    # Amazon Linux / CentOS
    sudo yum install -y docker
    sudo systemctl start docker
    sudo usermod -a -G docker ec2-user
else
    # Ubuntu
    sudo apt-get install -y docker.io
    sudo systemctl start docker
    sudo usermod -a -G docker ubuntu
fi

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Docker and Docker Compose installed successfully!"
docker --version
docker-compose --version
