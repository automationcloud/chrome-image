FROM node:16.13.0-slim
ARG DEBIAN_FRONTEND=noninteractive

# Install OS deps
RUN apt-get update && \
    apt-get install -y \
        curl \
        netcat \
        wget \
        vim \
        zip \
        lxde-core \
        lxterminal \
        tightvncserver \
        fonts-liberation \
        xdg-utils \
        && \
    apt-get autoremove -y && \
    apt-get remove -y xscreensaver && \
    rm -rf /var/lib/apt/lists/*

# Install Chrome

# COPY ./install-chrome.sh /opt/install-chrome.sh
# RUN /opt/install-chrome.sh && chown -R node:node /opt
# ENV CHROME_PATH /opt/latest/chrome

RUN wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    dpkg -i google-chrome-stable_current_amd64.deb

ENV CHROME_PATH /usr/bin/google-chrome
