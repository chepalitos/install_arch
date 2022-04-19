#!/bin/bash
# login as root
# pacman -Sy
# pacman -S git

# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# source instalarchgnome.sh

# If you don't have network connectivity in your Arch system, run:
# systemctl start dhcpcd <ethernet or wlan interface name>
# systemctl enable dhcpcd
# ip link set <ethernet or wlan interface name> up

# Fully update your Arch system:
# pacman -Syu  # If a new kernel becomes available and is now installed, reboot, before proceeding.
# Now that you have an updated system, do:
# pacman -S linux-headers
# pacman -S dkms  # This will automatically rebuild your kernel modules as new upstream kernels are released.

pacman -S xorg
pacman -S xf86-video-intel
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

pacman -S gnome-shell nautilus gnome-terminal gnome-tweak-tool gnome-keyring gnome-system-monitor
# pacman -S genome-shell-extensions gnome-software totem evince epiphany gnome-screenshot gedit eye gnome-control-center xdg-user-dirs network-manager-applet
# pacman -S latexila gtg gitg file-roller go recapp anjunta bluefish
# pacman -S usbutils
pacman -S papirus-icon-theme
pacman -Syu xf86-input-wacom
pacman -S python python-pip

pacman -S networkmanager

systemctl stop dhcpcd
systemctl disable dhcpcd

systemctl enable NetworkManager
systemctl start NetworkManager

systemctl start bluetooth.service
systemctl enable bluetooth.service
# First off, I’ll install pulseaudio and the Bluetooth extension.
sudo pacman -S pulseaudio
sudo pacman -S pulseaudio-bluetooth
# Start up pulseaudio:
sudo systemctl pulseaudio start
# If you want it to start up automatically:
sudo systemctl start pulseaudio

pacman -S gdm
systemctl enable gdm
systemctl start gdm

echo "are we still alive?"

# ctrl + alt + f3
# login as root
# nano /etc/sudoers
# nomre_del_usuario ALL=(ALL) ALL

# localectl set-locale LANG="es_AR.UTF-8"
# localectl set-x11-keymap es
# nano /etc/locale.gen uncomment es_AR.UTF-8. Comment out any others, unless of course you need them to be able to read.

Then run: sudo locale-gen
# localectl bluez bluez-utils

# pacman -S go
# sudo pacman -S gnome-control-center

# login as root
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# yay -S pamac-aur-git --noconfirm
