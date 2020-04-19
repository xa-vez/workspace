#!/bin/bash

CONFIG_DIR=${PWD}/../config
CONFIG_FILE_NAME=platform.sh

# Load configuration file 
. ${CONFIG_DIR}/${CONFIG_FILE_NAME}

# Stop container
printf "\n${INFO} Stop container \n"
sudo docker stop ${DOCKER_WEB_CONTAINER}

# Remove container
printf "\n${INFO} Remove container \n"
sudo docker rm ${DOCKER_WEB_CONTAINER}

# Remove container
#   -d 
#   -i Keep STDIN open even if not attached
#   -t Allocate a pseudo-TTY
printf "\n${INFO} Create container \n"
sudo docker run -d -it -p 4200:4200 --name ${DOCKER_WEB_CONTAINER} ${DOCKER_WEB_IMAGE}
