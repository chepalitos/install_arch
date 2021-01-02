#!/bin/bash
# loadkeys es

ls /sys/firmware/efi # To enshure it is it UEFI
lsblk
pacman -Sy refind-efi refind git
refind-install
cd /boot/efi/EFI/refind
mkdir theme
cd theme
git clone https://github.com/LightAir/darkmini.git
nano /boot/efi/EFI/refind/refind.conf # To enable the theme add include refind-theme-regular/theme.conf at the end of refind.conf
To enable the theme add include themes/darkmini/theme-mini.conf at the end of refind.conf or add include themes/darkmini/theme.conf

# Boot into Linux.
# Type efibootmgr as root to obtain a list of your boot loader entries. Each entry includes a boot number, as in Boot0003 or Boot0027.
# Remove all of the boot loader entries except rEFInd's by using efibootmgr's -b bootnum option to specify the boot entry and -B to delete it. For instance, typing efibootmgr -b 0027 -B as root deletes boot entry Boot0027. Issue a separate efibootmgr command for each boot entry.
# Re-install rEFInd using the install script. It's unclear from the original post if this meant installing from Linux or from macOS.
