#!/bin/bash
# loadkeys es
# pacman -Sy
# pacman -S git
# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch.sh
# ./instalarch.sh

# ls /sys/firmware/efi # To enshure it is it UEFI
# lsblk

# if U need to format /efi partition
# mkfs.vfat -F 32 /dev/sdXX

# if U need to format /boot partition
# mkfs.ext4 /dev/sdXY

timedatectl set-ntp true
lsblk

echo -n "Ingrese el numero de la unidad donde se montara /swap: "
read -s swap_number
echo $swap_number
mkswap /dev/sda$swap_number
swapon /dev/sda$swap_number

echo -n "Ingrese el numero de la unidad donde se montara /mnt: "
read -s mnt_number
echo $mnt_number
mkfs.ext4 /dev/sda$mnt_number
mount /dev/sda$mnt_number /mnt

echo -n "Ingrese el numero de la unidad donde se montara /boot: "
read -s boot_number
echo $boot_number
mkdir /mnt/boot
mount /dev/sda$boot_number /mnt/boot

echo -n "Ingrese el numero de la unidad donde se montara /efi: "
read -s efi_number
echo $efi_number
mkdir /mnt/boot/efi
mount /dev/sda$efi_number /mnt/boot/efi

echo -n "Ingrese el numero de la unidad donde se montara /home: "
read -s home_number
echo $home_number
mkdir /mnt/home
mount /dev/sda$home_number /mnt/home

# Check where is home mounted
# findmt -n -o SOURCE --target /home

pacstrap /mnt base linux linux-firmware efibootmgr grub nano dhcpcd iwd lvm2 net-tools man-pages
# pacstrap /mnt base base-devel net-tools
# pacstrap /mnt base base-devel grub efibootmgr linux linux-headers nano dhcpcd iwd lvm2 linux-firmware net-tools
# pacstrap net-tools, dnsutils e iputils dialog wpa_supplicant

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt /bin/bash

echo "are we still alive?"
