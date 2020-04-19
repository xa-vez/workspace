# Base Image
FROM ubuntu:18.04
LABEL mantainer="Xa-Vez <xavez@linux.com>"
ENV DEBIAN_FRONTEND=noninteractive

# Install Utilities
RUN apt-get update
RUN apt-get install -y apt-utils tmux vim openssh-server net-tools systemd syslog-ng

# Install Specific Tools
RUN apt-get install -y git nodejs npm 

# Port to Expose
EXPOSE 4200
