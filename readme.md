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

### Install git and clone the repo
```
pacman -Sy git
git clone https://github.com/chepalitos/install-arch.git
```

### Run first script
```
cd install-arch
source arch-fst.sh
```

### Run second script
```
cd /tmp
pacman -S git
git clone https://github.com/chepalitos/install-arch.git
cd instalarch
source arch-snd.sh
```

### Reboot:
```
umount -R /mnt
swapoff -a
reboot
```

## If you don't have network connectivity in your Arch system, run:
```
systemctl enable dhcpcd
systemctl start dhcpcd
ip link set <interface-name> up
```

### Run third script
login as root
```
cd /tmp
pacman -S git
git clone https://github.com/palitoschinos/instalarch
cd install-arch
source gnome.sh
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

Pipewire for screencast record:
```
sudo pacman -S gst-plugin-pipewire gst-plugins-good
```

