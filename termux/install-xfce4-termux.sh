#!/bin/bash

pkg install root-repo
pkg install x11-repo

pkg upgrade

pkg install xfce4

cp start-xfce4-termux.sh /data/data/com.termux/files/usr/bin/