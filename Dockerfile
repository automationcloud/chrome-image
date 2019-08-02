FROM node:10.16.0-slim
# FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

# Install OS deps
RUN apt-get update && \
    apt-get install -y \
        curl \
        netcat \
        vim \
        zip \
        libxss1 \
        tightvncserver \
        && \
    apt-get autoremove -y && \
    apt-get remove -y xscreensaver && \
    rm -rf /var/lib/apt/lists/*

# Install Chrome

COPY ./install-chrome.sh /opt/install-chrome.sh
RUN /opt/install-chrome.sh && chown -R node:node /opt
ENV CHROME_PATH /opt/latest/chrome

