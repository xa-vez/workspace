#!/bin/bash

CONFIG_DIR=${PWD}/../config
CONFIG_FILE_NAME=platform.sh

# Load configuration file 
. ${CONFIG_DIR}/${CONFIG_FILE_NAME}

# Stop container
printf "\n${INFO} Stop container \n"
sudo docker stop ${DOCKER_WEB_CONTAINER}
