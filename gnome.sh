#!/bin/bash
# login as root
# pacman -Sy
# pacman -S git

# cd /tmp
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
pacman -S linux-headers
pacman -S dkms  # This will automatically rebuild your kernel modules as new upstream kernels are released.

# pacman -S xorg-xwayland
pacman -S xf86-video-intel
pacman -Syu xf86-input-wacom
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

# pacman -S gnome
pacman -S gnome-shell nautilus gnome-terminal gnome-system-monitor gnome-text-editor gnome-calculator evince totem epiphany tmux openssh
# pacman -S genome-shell-extensions gnome-software totem evince epiphany gnome-screenshot gedit eye gnome-control-center xdg-user-dirs network-manager-applet gnome-tweak-tool
# pacman -S latexila gtg gitg file-roller go recapp anjunta bluefish gnome-keyring
# pacman -S usbutils tcpdump

pacman -S networkmanager
systemctl enable NetworkManager
systemctl start NetworkManager

#systemctl stop dhcpcd
#systemctl disable dhcpcd

#systemctl start bluetooth.service
#systemctl enable bluetooth.service

# First off, I’ll install pulseaudio and the Bluetooth extension.
#sudo pacman -S pulseaudio
#sudo pacman -S pulseaudio-bluetooth
# Start up pulseaudio:
#sudo systemctl pulseaudio start
# If you want it to start up automatically:
#sudo systemctl start pulseaudio

pacman -S gdm
systemctl enable gdm
systemctl start gdm

echo "are we still alive?"

# pacman -S papirus-icon-theme
# gsettings set org.gnome.desktop.interface icon-theme Papirus

# pacman -S gnome-themes-extra
# gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark/

# ctrl + alt + f3
# login as root
# nano /etc/sudoers
# nomre_del_usuario ALL=(ALL) ALL

# localectl set-locale LANG="es_AR.UTF-8"
# localectl set-x11-keymap es
# nano /etc/locale.gen uncomment es_AR.UTF-8. Comment out any others, unless of course you need them to be able to read.

# Then run: sudo locale-gen
# localectl bluez bluez-utils

# pacman -S go
# sudo pacman -S gnome-control-center

# login as root
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# yay -S pamac-aur-git --noconfirm

## somre other stuff https://github.com/hannenz/duplicate

# https://aur.archlinux.org/packages/gedit-duplicate-line
# https://github.com/hannenz/duplicate

