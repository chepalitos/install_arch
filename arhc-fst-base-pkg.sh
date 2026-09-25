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
