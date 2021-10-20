FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /workspace

RUN apt-get update && \
  apt-get install -y \
    software-properties-common \
    git && \
  add-apt-repository --yes --update ppa:ansible/ansible && \
  apt install -y ansible && \
  ansible-pull -v -U https://github.com/nomadicoder/config-nix.git
