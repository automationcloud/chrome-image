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

ENV VNC_PATH /usr/bin/vncserver
ENV CHROME_PATH /opt/latest/chrome
ENV USER_AGENT Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.0 Safari/537.36
