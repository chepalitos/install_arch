#!/bin/bash

#timedatectl set-ntp true
lsblk

echo -n ">>> Ingrese el numero de la unidad donde se montara /swap: "
read -s swap_number
echo $swap_number
mkswap /dev/sda$swap_number
swapon /dev/sda$swap_number

echo -n ">>> Ingrese el numero de la unidad donde se montara /root: "
read -s mnt_number
echo $mnt_number
mkfs.ext4 /dev/sda$mnt_number
mount /dev/sda$mnt_number /mnt

echo -n "Ingrese el numero de la unidad donde se montara /boot: "
read -s boot_number
echo $boot_number
mkfs.ext4 /dev/sda$boot_number
mkdir /mnt/boot
mount /dev/sda$boot_number /mnt/boot

echo -n ">>> Ingrese el numero de la unidad donde se montara /efi: "
read -s efi_number
echo $efi_number
mkfs.fat -F32 /dev/sda$efi_number
mkdir /mnt/boot/efi
mount /dev/sda$efi_number /mnt/boot/efi

echo -n ">>> Ingrese el numero de la unidad donde se montara /home: "
read -s home_number
echo $home_number
mkdir /mnt/home
mount /dev/sda$home_number /mnt/home

# Instalando archlinux-heyring

# pacman -Syu
# pacman -Sy archlinux-keyring #
# pacman-key --refresh-keys

# Instalando archlinux-heyring

# pacman-key --init
# pacman-key --populate archlinux
# pacman -Sy archlinux-keyring

echo -n ">>>> Instalando paquetes base\n"

# pacstrap /mnt base
# pacstrap /mnt base linux-firmware linux

# pacstrap /mnt base
pacstrap /mnt base linux-firmware linux linux-headers base-devel
# pacstrap /mnt base linux-firmware linux linux-headers base-devel dhcpcd iputils dnsutils vim
# pacstrap /mnt base linux-firmware linux efibootmgr grub-efi-x86_64 base-devel vim
# pacstrap /mnt base linux-firmware linux efibootmgr grub-efi-x86_64 base-devel vim linux-headers net-tools dnsutils iputils dhcpcd

genfstab -U /mnt >> /mnt/etc/fstab

# echo -n ">>> bye bye\n"

arch-chroot /mnt
# arch-chroot /mnt /bin/bash
