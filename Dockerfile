FROM node:10.16.0-slim

# Install OS deps

RUN apt-get update && \
    apt-get install -y \
        vim \
        curl \
        netcat \
        zip \
        lxde-core \
        lxterminal \
        tightvncserver \
        libxss1 && \
        && \
    apt-get autoremove -y && \
    apt-get remove -y xscreensaver && \
    rm -rf /var/lib/apt/lists/*

# Install Chrome

COPY ./install-chrome.sh /opt/install-chrome.sh
RUN /opt/install-chrome.sh
ENV CHROME_PATH /opt/latest/chrome
RUN chown -R node:node /opt

