#!/bin/sh

# Required dependencies:
# shells/bash
# X11/xterm
# emulators/linux-c6

if [ ! $(which bash) ]; then
	echo "Please install shells/bash"
	return 1
fi

cd /tmp
fetch -a "http://repo.steampowered.com/steam/archive/precise/steam_latest.tar.gz" -o /tmp/steam_latest.tar.gz
mkdir /tmp/Steam
tar xvfz /tmp/steam_latest.tar.gz -C /tmp/Steam
cd /tmp/Steam/steam
make install PREFIX=/compat/linux/usr
