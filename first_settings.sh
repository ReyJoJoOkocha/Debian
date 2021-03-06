#!bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install nmap -y
sudo apt install virtualbox -y
sudo apt install htop -y
sudo apt install postgresql -y

#install docker
sudo apt install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update && apt-cache policy docker-ce
sudo apt install -y docker-ce
sudo usermod -aG docker $(whoami)
#install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
