#!/bin/bash
# loadkeys es
# pacman -Sy
# pacman -S git
# git clone https://github.com/palitoschinos/instalarch
# cd instalarch
# chmod +x instalarch.sh
# ./instalarch.sh

# ls /sys/firmware/efi # To enshure it is it UEFI

timedatectl set-ntp true
loadkeys es
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

mkdir /mnt/boot
mount /dev/sda2 /mnt/boot

mkdir /mnt/boot/efi
mount /dev/sda1 /mnt/boot/efi

pacstrap /mnt base base-devel grub efibootmgr dialog wpa_supplicant linux linux-headers nano dhcpcd iwd lvm2 linux-firmware --noconfirm

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt /bin/bash << EOF

echo "are we still alive?"
