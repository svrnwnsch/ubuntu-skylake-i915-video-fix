[![](https://cdn.rawgit.com/linuxenko/linuxenko.github.io/master/media/skylake/video-fix.png)](https://cdn.rawgit.com/linuxenko/linuxenko.github.io/master/media/skylake/video-fix.png)


Skylake (Intel HD530/HD520) video fix for Linux<br />

> 00:02.0 VGA compatible controller: Intel Corporation Sky Lake Integrated Graphics (rev 06)

The problem :<br />
 * skype video calls become unusable.<br />
 * blue lines<br />
 * vlc, openshot, skype video always on top<br />
 * video does not resizable<br />
 * etc..<br />
 

Tested on:  <br />
     * ubuntu wily (15.10)  <br />

## installation <br />

* Copy 20-intel.conf from repository to /usr/share/X11/xorg.conf.d/20-intel.conf <br />
* Restart / reboot the system <br />

Lazy fix
```
cd /tmp 
wget https://github.com/linuxenko/ubuntu-skylake-i915-video-fix/releases/download/v1/20-intel.conf
sudo cp 20-intel.conf /usr/share/X11/xorg.conf.d/20-intel.conf
```
Restart system then. <br />

### Kernel 4.2.0-x  -  4.3.x issues

 * Very unstable driver when using opengl or playing [games](https://github.com/linuxenko/ubuntu-skylake-i915-video-fix/issues/2).
 * With 4.2 system can stuck even watching youtube videos.
 
### Kernel - 4.4.x issues

 * Looks like very unstable, sometimes freeze whole system without any reason. I don't use it anymore, 4.3.x is more stable.
 * Monitor flickering at boot time, before it start Xorg server it blinks. (4.4.x only problem)
 * Firefox webgl rendering [crush](https://github.com/linuxenko/ubuntu-skylake-i915-video-fix/issues/4) <br />

> W: Possible missing firmware /lib/firmware/i915/skl_guc_ver4.bin for module i915 [issue](https://github.com/linuxenko/ubuntu-skylake-i915-video-fix/issues/3). <br />
 
FIX:<br />
 Download and install [firmware](https://01.org/linuxgraphics/downloads/sklgucver43).<br />
 
```
cd /tmp 
wget https://01.org/sites/default/files/downloads/intelr-graphics-linux/sklgucver43.tar.bz2
tar xf sklgucver43.tar.bz2
cd skl_guc_ver4_3/ ; sudo ./install.sh
sudo update-initramfs -u -k all
```

## Contribution

 * Testing results and fixes contribution are highly appreciated.


