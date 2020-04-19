#!/bin/bash

function show_error {
    printf "\n${ERROR} $1 \n"
    exit 1
}

CONFIG_DIR=${PWD}/../config
CONFIG_FILE_NAME=platform.sh

# Load configuration file 
. ${CONFIG_DIR}/${CONFIG_FILE_NAME}

#
# Stop container and remove image
#
printf "\n${INFO} Stop container \n"
sudo docker stop ${DOCKER_WEB_CONTAINER}
printf "\n${INFO} Remove container \n"
sudo docker rm ${DOCKER_WEB_CONTAINER}
printf "\n${INFO} Remove image \n"
sudo docker image rm ${DOCKER_WEB_IMAGE}

#
# Build the Image
#

# -t : option to name the image
sudo docker build -t ${DOCKER_WEB_IMAGE} .

exit 0
