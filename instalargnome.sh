#!/bin/bash
# pacman -Sy
# pacman -S git
# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch.sh
# ./instalarch.sh


# Fully update your Arch system:
# pacman -Syu  # If a new kernel becomes available and is now installed, reboot, before proceeding.

# If you don't have network connectivity in your Arch system, run:
# systemctl start dhcpcd <ethernet or wlan interface name>

# Now that you have an updated system, do:
# pacman -S linux-headers
# pacman -S dkms  # This will automatically rebuild your kernel modules as new upstream kernels are released.

pacman -S xorg xorg-xinit
pacman -S xorg-drivers # For all if you do not know
pacman -S xorg-apps

pacman -S gnome-shell nautilus gnome-terminal gnome-tweak-tool gnome-control-center xdg-user-dirs  gnome-keyring

# nano /etc/locale.gen # uncomment the needed lines like: es_Es.UTF-8 or es_AR.UTF-8
# locale-gen

pacman -S networkmanager

systemctl stop dhcpcd
systemctl disable dhcpcd

sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

pacman -S gdm
systemctl enable gdm
systemctl start gdm

echo "are we still alive?"
