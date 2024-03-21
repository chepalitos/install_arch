#!/bin/bash

# Install DKMS. This will automatically rebuild your kernel modules as new upstream kernels are released.
sudo pacman -S dkms

# pacman -S xorg-xwayland
# pacman -S xf86-video-intel
# pacman -Syu xf86-input-wacom
# pacman -S xorg-server xorg-server-utils xorg-xinit xorg-apps xorg-drivers

# pacman -S gnome
sudo pacman -S gnome-shell nautilus gnome-console gnome-system-monitor gnome-text-editor gnome-calculator gnome-screenshot gnome-control-center evince totem firefox tmux openssh networkmanager
# pacman -S genome-shell-extensions epiphany gedit eye xdg-user-dirs network-manager-applet gnome-tweak-tool gnome-terminal
# pacman -S gnome-keyring
# pacman -S usbutils tcpdump

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

#systemctl stop dhcpcd
#systemctl disable dhcpcd

# sudo pacman -S bluez bluez-utils
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# First off, I’ll install pulseaudio and the Bluetooth extension.
#sudo pacman -S pulseaudio
#sudo pacman -S pulseaudio-bluetooth

# Start up pulseaudio:
#sudo systemctl pulseaudio start
# If you want it to start up automatically:
#sudo systemctl start pulseaudio

sudo pacman -S gdm
sudo systemctl enable gdm
sudo systemctl start gdm

echo "are we still alive?"

# pacman -S papirus-icon-theme
# gsettings set org.gnome.desktop.interface icon-theme Papirus

# pacman -S gnome-themes-extra
# gsettings set org.gnome.desktop.interface gtk-theme Adwaita-dark/
# gsettings get org.gnome.desktop.interface gtk-theme
# sudo pacman -S xdg-desktop-portal-gnome xdg-desktop-portal

# localectl set-x11-keymap es
# localectl set-x11-keymap latam
# gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'latam')]"
# gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'es')]"
# gsettings get org.gnome.desktop.input-sources sources
