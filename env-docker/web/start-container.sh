#!/bin/bash

CONFIG_DIR=${PWD}/../config
CONFIG_FILE_NAME=platform.sh

# Load configuration file 
. ${CONFIG_DIR}/${CONFIG_FILE_NAME}

# Start container
printf "\n${INFO} Start container \n"
sudo docker start ${DOCKER_WEB_CONTAINER}
