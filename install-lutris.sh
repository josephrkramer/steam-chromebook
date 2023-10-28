#!/bin/bash

#install wine dependencies
sudo dpkg --add-architecture i386 && sudo apt update && sudo apt install -y wine64 wine32 libasound2-plugins:i386 libsdl2-2.0-0:i386 libdbus-1-3:i386 libsqlite3-0:i386

#download lutris deb from github release
#TODO: make this smarter to always get latest release
wget https://github.com/lutris/lutris/releases/download/v0.5.14/lutris_0.5.14_all.deb

#install package with dependencies
sudo apt install ./lutris_0.5.14_all.deb