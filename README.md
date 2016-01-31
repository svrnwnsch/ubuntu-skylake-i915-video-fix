# ubuntu-skylake-i915-video-fix

Skylake (intel hd530) video 

The problem :
 * skype video calls become unusable.
 * blue lines
 * vlc, openshot, skype video always on top
 * video does not resizable
 * etc..
 
Solution:
  Tested on:
     * ubuntu wily (15.10)

* Copy 20-intel.conf from repository to /usr/share/X11/xorg.conf.d/20-intel.conf
* Restart Xserver (logout/login)
