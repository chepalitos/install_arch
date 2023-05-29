# Instaling arch linux
Something like that

## The official stuff:
- https://wiki.archlinux.org/title/Installation_guide
- https://wiki.archlinux.org/title/Linux_console/Keyboard_configuration

## video tutorial
- https://www.youtube.com/watch?v=_ZYuzjH-ZIA

## First steps
Load es kayboard
```
loadkeys es
```

Ensure your network interface is listed and enabled:
```
ip link
```
Bringing interfaces up/down
```
ip link set dev <interface> up
```

The connection may be verified with ping:
```
ping archlinux.org
```

Verify the boot mode, list the efivars directory:
```
ls /sys/firmware/efi/efivars
```

To know more about your hdrive
```
fdisk -l
lsblk
```

To partition your hard drive:
```
cfdisk
```

To format /efi partition
```
mkfs.fat -F32 /dev/sdXX
```

To format /boot partition
```
mkfs.ext4 /dev/sdXY
```
## Begin installation

Install git and clone the repo
```
pacman -Sy git
git clone https://github.com/chepalitos/install-arch.git
```

Run first script
```
cd install-arch
source arch-fst.sh
```

Run second script
```
cd /tmp
pacman -S git
git clone https://github.com/chepalitos/install-arch.git
cd instalarch
source arch-snd.sh
```

Reboot:
```
umount -R /mnt
swapoff -a
reboot
```

Run third script
```
cd /tmp
pacman -S git
git clone https://github.com/palitoschinos/instalarch
cd install-arch
source <enviroment-name>.sh
```

## Icons
Copy files in `icon` folder to `/home/fschneeberger/.local/share/applications/`

Install icons:
```
sudo pacman -S papirus-icon-theme
sudo gsettings set org.gnome.desktop.interface icon-theme Papirus
```

Change theme:
```
sudo pacman -S gnome-themes-extra
sudo gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark/
```

## Add Gedit plugins:

#### Installation:
Drop the files contained in this package into your `${HOME}/.local/share/gedit/plugins/+` folder.
If the plugins folder does not exist yet, just create it.
Start gedit and open Preferences and in the Plugins section activate the Duplicate Line plugin.

#### How it works
The plugin adds the keyboard shortcut CTRL+SHIFT+d to gedit.
When pressing this key combination the plugin will duplicate the current line.
If there is a selection and the selection spans several lines, then all selected lines are duplicated.
If the selection is within a single line, then the selected text will be duplicated.

- https://github.com/hannenz/duplicate
