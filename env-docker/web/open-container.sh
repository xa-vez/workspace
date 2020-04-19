#!/bin/bash

CONFIG_DIR=${PWD}/../config
CONFIG_FILE_NAME=platform.sh

# Load configuration file 
. ${CONFIG_DIR}/${CONFIG_FILE_NAME}

# enter to container
printf "\n${INFO} Open container \n"
sudo docker exec -it ${DOCKER_WEB_CONTAINER} /bin/bash
