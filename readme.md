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
or
```
mkfs.fat -F32 /dev/nvme0n1pXX
```

To format /boot partition
```
mkfs.ext4 /dev/sdXY
```
## Begin installation
This method requiere separated partotions for `/boot` boot and `/efi`.

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

### Run second and third script
```
cd /tmp
pacman -S git
git clone https://github.com/chepalitos/install-arch.git
cd instalarch
source arch-snd.sh
source arch-trd.sh
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
cd install-arch
source gnome-root.sh
```

## Icons
Copy files in `icon` folder to `/home/<username>/.local/share/applications/` to hide some icons from the desk.

Install icons:
```
sudo pacman -S papirus-icon-theme
gsettings set org.gnome.desktop.interface icon-theme Papirus
```

Change theme:
```
sudo pacman -S gnome-themes-extra
sudo pacman -S xdg-desktop-portal-gnome xdg-desktop-portal
gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark
```
or
```
gsettings set org.gnome.desktop.interface color-scheme prefer-dark
```

To query the current GTK theme:
```
gsettings get org.gnome.desktop.interface gtk-theme
```

Properly set keyboard:
```
sudo localectl set-x11-keymap latam
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'latam')]"
```
```
localectl set-x11-keymap es
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'es')]"
```
```
gsettings get org.gnome.desktop.input-sources sources
```

Links:

- https://wiki.archlinux.org/title/GTK#Dark_theme_variant
- https://wiki.archlinux.org/title/Dark_mode_switching
- https://wiki.archlinux.org/title/GTK#Dark_theme_variant
- https://wiki.archlinux.org/title/GTK

Pipewire for screencast record:
```
sudo pacman -S gst-plugin-pipewire gst-plugins-good
```

Video codecs for tothem
```
sudo pacman -S gst-libav libmpeg2
```

Sysadmin packages
```
bind
strace
inetutils
```

Gnome-calendar path:
```
home/userpath/.local/share/evolution/calnder/system/calendar.ics
```

ssh server
```
sudo pacman -S openssh
sudo systemctl start sshd
sudo systemctl enable sshd
ssh-keygen
ssh-keygen -R <server-ip>
```

Dual boot
- https://wiki.archlinux.org/title/GRUB#Dual_booting_with_GNU.2FLinux

os-prober will not be executed to detect other bootable partitions then
edit `/etc/default/grub` add/uncomment:
```
GRUB_DISABLE_OS_PROBER=false
```

GDM auto-suspend (GNOME 3.28)

GDM uses a separate dconf database to control power management.
Disable auto-suspend (also run the command with ac replaced with battery to also disable it while running on battery):
```
sudo -u gdm dbus-launch gsettings set org.gnome.settings-daemon.plugins.power sleep
```
