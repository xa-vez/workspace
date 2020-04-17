#!/bin/bash 

# intall utilities
sudo apt update -y 
sudo apt install -y tmux vim 

# remove old versions
sudo apt-get remove docker docker-engine docker.io

# install Docker
sudo apt update
sudo apt install docker.io

# start and automate Docker
sudo systemctl start docker
sudo systemctl enable docker

# check version
docker --version

