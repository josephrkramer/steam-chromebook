#!/bin/bash

sudo apt -y install dosbox inotify-tools timidity fluid-soundfont-gm make && \
git clone https://github.com/dreamer/boxtron.git && \
cd boxtron && \
sudo make install
