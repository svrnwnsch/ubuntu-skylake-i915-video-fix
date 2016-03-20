#!/bin/bash

RELEASE_URI='https://github.com/linuxenko/ubuntu-skylake-i915-video-fix/releases/download/v1/20-intel.conf'
CONFIG_FILE="/usr/share/X11/xorg.conf.d/20-intel.conf"

if lsb_release -c | egrep -q '(wily)'; then
	echo 'Starting installation.'
else
	echo 'Unsupported release'
	exit 1
fi

if id | egrep -q '(uid=0\(root\))'; then
        echo 'Downloading config file.'
else
        echo 'Root privilegies are required'
        echo 'Try: sudo '$0 
        exit 1
fi


wget -qO- ${RELEASE_URI} > $CONFIG_FILE
