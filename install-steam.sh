sudo apt-get update && \
sudo apt-get -y install software-properties-common && \
sudo apt-add-repository non-free && \
sudo apt-add-repository contrib && \
sudo dpkg --add-architecture i386 && \
sudo apt-get update && \
sudo apt-get -y install lsof steam
