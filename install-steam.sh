#!/bin/bash

sudo apt update && \
sudo apt -y install software-properties-common && \
sudo apt-add-repository non-free && \
sudo apt-add-repository contrib && \
sudo dpkg --add-architecture i386 && \
sudo apt update && \
sudo apt -y install lsof steam
