FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y \
    gcc python-dev \
    libkrb5-dev \
    software-properties-common && \
  add-apt-repository --yes --update ppa:ansible/ansible && \
  apt install -y ansible
