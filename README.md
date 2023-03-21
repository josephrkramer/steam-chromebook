# steam-chromebook
Automate the installation of Steam on a Chromebook using the built in Linux container (crostini)

Enable the following flags (as of Chrome OS 81):
- chrome://flags/#crostini-gpu-support
  - Enables crostini to make use of the GPU.
- chrome://flags/#exo-pointer-lock
  - Enables pointer capture for relative mouse movement so 3D movement is practical. Otherwise the mouse "hits the edge of the screen" and no further motion in that direction is possible.

```
git clone https://github.com/josephrkramer/steam-chromebook.git
cd steam-chromebook
./install-steam.sh
```

You can then stream games from your cloud system. I recommend https://github.com/putty182/gcloudrig

If you are using Steam streaming to stream games from either GOG or Origin (or likely any other launcher), be sure to disable the GOG and/or Origin overlays. Add the launchers themselves to Steam as a "non-Steam game."


## Alternate install using Flatpak
- https://flatpak.org/setup/Chrome%20OS
- https://backports.debian.org/Instructions/
- https://flathub.org/apps/details/com.valvesoftware.Steam
- https://github.com/dreamer/boxtron#flathub
