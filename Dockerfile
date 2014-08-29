FROM debian:jessie

RUN apt-get update && apt-get install -y \
  python \
  g++ \
  ca-certificates \
  make \
  curl \
  --no-install-recommends

ENV NODE_VERSION 0.11.13

RUN curl http://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.gz | \
  tar -C /usr/local --strip-components=1 -xvz \
  && apt-get autoremove -y