#!/bin/bash

pkg install binutils

# create necessary directories
mkdir -p ~/steam
mkdir -p ~/steam/tmp
cd ~/steam/tmp

# download latest deb and unpack
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
ar x steam.deb
tar xf data.tar.xz

# remove deb archives, not needed anymore
rm ./*.tar.xz ./steam.deb

# move deb contents to steam folder
mv ./usr/* ../
cd ../ && rm -rf ./tmp/

# create run script
echo "#!/bin/bash
export STEAMOS=1
export STEAM_RUNTIME=1
export DBUS_FATAL_WARNINGS=0
~/steam/bin/steam steam://open/minigameslist $@" > steam

# make script executable and move
chmod +x steam
#mv steam /usr/local/bin/
mv steam /data/data/com.termux/files/usr/bin/

# detect if we're running on 64 bit Debian (maybe this can be moved in another script then mentioned in documentation for the people that don't use steam but don't want a headache)
MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'aarch64' ]; then
 echo "Detected 64 bit ARM Debian. Installing 32 bit libraries"
 dpkg --add-architecture armhf # enable installation of armhf libraries
 pkg update # update package lists with the newly added arch
 # install the libraries that Steam requires
 pkg install libc6:armhf libncurses5:armhf libsdl2-2.0-0:armhf libsdl2-image-2.0-0:armhf libsdl2-mixer-2.0-0:armhf libsdl2-ttf-2.0-0:armhf libopenal1:armhf libpng16-16:armhf libfontconfig1:armhf libxcomposite1:armhf libbz2-1.0:armhf libxtst6:armhf libsm6:armhf libice6:armhf libgl1:armhf libxinerama1:armhf libxdamage1:armhf

 # install mesa for armhf if already installed
 if dpkg-query -W libgl1-mesa-dri 2>/dev/null; then
  echo "Detected mesa driver for 64 bit ARM. Installing complementary 32 bit one"
  pkg install libgl1-mesa-dri:armhf
 fi

 echo "Don't forget to compile/install Box64!"
fi

echo "Script complete."