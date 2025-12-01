#-----------
# Base Image
#-----------
# FROM debian:bookworm-slim
FROM mcr.microsoft.com/devcontainers/base:debian

#-------------
# Debian Setup
#-------------
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive

#---------------------------------------------------------------------
# ⚠️ REMEMBER TO REMOVE THE TRAILING `\` if you comment the next line!
#---------------------------------------------------------------------
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive
    # && apt-get -y install git
    # && apt-get -y install python3-pip


#----------
# NPM setup
#----------
# RUN npm install -g npm@latest
# RUN npm install -g @anthropic-ai/claude-code


#-------------
# Python Setup
#-------------
# RUN ln -sf /usr/bin/python3 /usr/bin/python
# RUN ln -sf /usr/bin/pip3 /usr/bin/pip


#------------------------
#     Customizations     
#------------------------
