FROM node:16.13.0-slim
ARG DEBIAN_FRONTEND=noninteractive

# Install OS deps
RUN apt-get update && \
    apt-get install -y \
        curl \
        netcat \
        vim \
        zip \
        lxde-core \
        lxterminal \
        tightvncserver \
        && \
    apt-get autoremove -y && \
    apt-get remove -y xscreensaver && \
    rm -rf /var/lib/apt/lists/*

# Install Chrome

COPY ./install-chrome.sh /opt/install-chrome.sh
RUN /opt/install-chrome.sh && chown -R node:node /opt
ENV CHROME_PATH /opt/latest/chrome
