# ubuntu-skylake-i915-video-fix<br />

Skylake (intel hd530) video <br />

The problem :<br />
 * skype video calls become unusable.<br />
 * blue lines<br />
 * vlc, openshot, skype video always on top<br />
 * video does not resizable<br />
 * etc..<br />
 

Tested on:  <br />
     * ubuntu wily (15.10)  <br />

## installation
* Copy 20-intel.conf from repository to /usr/share/X11/xorg.conf.d/20-intel.conf
* Restart Xserver (logout/login)


## Kernel - 4.3.x issues
 * Very unstable driver when using opengl or playing games.
 
## Kernel - 4.4.x issues
 * Loading /lib/firmware/i915/skl_guc* firemware poblem
 * Monitor blinks at kernel boot time

> ### Kernel - 4.3.5-040305-generic #201601311533 SMP Sun Jan 31 20:35:35 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux <br />
 > Looks like no more driver dmesg errors, freezes and artifacts. <br />
 > Download http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.3.5-wily/
