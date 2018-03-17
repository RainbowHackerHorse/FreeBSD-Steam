#!/bin/sh

# Required dependencies:
# shells/bash
# X11/xterm
# emulators/linux-c7
# sysutils/coreutils
# archivers/gtar
# x11/zenity
# devel/dbus

if [ ! $(which bash) ]; then
	echo "Please install shells/bash"
	return 1
fi

cd /tmp
fetch -a "http://repo.steampowered.com/steam/archive/precise/steam_latest.tar.gz" -o /tmp/steam_latest.tar.gz
mkdir /tmp/Steam
tar xvfz /tmp/steam_latest.tar.gz -C /tmp/Steam
cd /tmp/Steam/steam
rm /tmp/Steam/steam/steam
fetch "https://raw.githubusercontent.com/RainbowHackerHorse/FreeBSD-Steam/master/Files/steam" -o /tmp/Steam/steam/steam
make install PREFIX=/usr/local/bin
