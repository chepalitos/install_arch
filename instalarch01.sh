#!/bin/bash

timedatectl set-ntp true
lsblk

echo -n "Ingrese el numero de la unidad donde se montara /swap: "
read -s swap_number
echo $swap_number
mkswap /dev/sda$swap_number
swapon /dev/sda$swap_number

echo -n "Ingrese el numero de la unidad donde se montara /root: "
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
mount /dev/sda$efi_number /mnt/efi
# mount /dev/sda$efi_number /mnt/boot/efi

echo -n "Ingrese el numero de la unidad donde se montara /home: "
read -s home_number
echo $home_number
mkdir /mnt/home
mount /dev/sda$home_number /mnt/home

pacman -Syu
# pacman -S archlinux-keyring
pacman-key --refresh-keys
pacstrap /mnt base linux linux-firmware efibootmgr grub-efi-x86_64 base-devel dhcpcd

# linux-headers net-tools vim lvm2 nano iwd man-pages dialog dnsutils iputils wpa_supplicant

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt
# arch-chroot /mnt /bin/bash

echo "are we still alive?"
