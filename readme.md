# Instaling arch linux
Something like that

## First steps
Load es kayboard
```
loadkeys es
```

Ensure your network interface is listed and enabled:
```
ip link
```
Bringing interfaces up/down
```
ip link set dev <interface> up
```

The connection may be verified with ping:
```
ping archlinux.org
```

Verify the boot mode, list the efivars directory:
```
ls /sys/firmware/efi/efivars
```

To know more about your hdrive
```
cfdisk
fdisk -l
lsblk
```

To format /efi partition
```
mkfs.fat -F32 /dev/sdXX
```

To format /boot partition
```
mkfs.ext4 /dev/sdXY
```
## Begin installation

Install git and clone the repo
```
pacman -Sy git
git clone https://github.com/palitoschinos/instalarch.git
```

Run first script
```
cd instalarch
source instalarch01.sh
```

deprecated commands
```
systemctl enable iwd
timedatectl set-ntp yes
timedatectl set-timezone America/Argentina/Buenos_Aires
```

Run first script
```
cd instalarch
source instalarch01.sh
```

Run second script
```
cd /tmp
pacman -S git
git clone https://github.com/palitoschinos/instalarch
cd instalarch
source instalarch02.sh
```

Reboot:
```
umount -R /mnt
swapoff -a
reboot
```



