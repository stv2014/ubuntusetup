#/bin/sh
export URL_NEON_LINUX='http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/technology/epp/downloads/release/neon/3/eclipse-jee-neon-3-linux-gtk-x86_64.tar.gz'

echo Create the Softwarefolder in the homedirectory
mkdir ~/Software
cd ~/Software
rm -rf eclipse

echo *** Download from $URL_NEON_LINUX ***
wget $URL_NEON_LINUX

echo *** unpacking The archive ***
tar -xzf eclipse-*-linux-*.tar.gz
rm eclipse-*-linux-*.tar.gz
