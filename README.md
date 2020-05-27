# steam-chromebook
Automate the installation of Steam on a Chromebook using the built in Linux container (crostini)

Enable the following flags (as of Chrome OS 81):
- chrome://flags/#crostini-gpu-support
- chrome://flags/#exo-pointer-lock

```
git clone https://github.com/josephrkramer/steam-chromebook.git
cd steam-chromebook
./install-steam.sh
```

You can then stream games from your cloud system. I recommend https://github.com/putty182/gcloudrig
