FROM node:0.10.41-slim
MAINTAINER Jakob Løkke Madsen <jakob@jakobloekkemadsen.com>

RUN apt-get update -y
RUN apt-get install curl bzip2 build-essential python git -y
RUN apt-get autoremove -y && rm -rf /usr/share/doc /usr/share/doc-base /usr/share/man /usr/share/locale /usr/share/zoneinfo && rm -rf /var/lib/cache /var/lib/log && rm -rf /tmp/* && npm cache clear

#Install meteor
RUN curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh
RUN npm -g install npm@latest