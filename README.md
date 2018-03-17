# FreeBSD-Steam
The Linux Steam Client patched to run on FreeBSD

### NOTE
This is a really dirty patch job right now.
Eventually, things will get cleaned up.
Multiple fixes are going to be submitted upstream to Valve.
As far as porting, once the scripts (both mine and Valve's) are cleaned up,
I'll be submitting a port to the Ports tree, with proper patches involved,
not this nasty "download modified files from github" crap I'm doing right now.

Use this at your own risk.
#### YOU SHOULD PROBABLY USE A VM.

## Dependencies
The following dependencies have been identified so far.
* shells/bash
* X11/xterm
* emulators/linux-c7
* sysutils/coreutils
* archivers/gtar
* x11/zenity
* devel/dbus

More may be identified.

## Requirements
This runs in the Linuxulator.
Run `./bin/installsteam.sh` as root.
Then, as a normal user, run
`/compat/linux/bin/sh /usr/local/bin/steam`
Let it do its thing.

## Current status
Steam installs, but a few shared libs are missing.
Steam currently loops after trying to update itself.
We can probably ignore linux32_vdso.so.1 requirement.
