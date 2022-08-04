# Instaling arch linux
Something like that

Load es kayboard
```
loadkeys es
```

Verify the boot mode, list the efivars directory:
```
ls /sys/firmware/efi/efivars
```

Ensure your network interface is listed and enabled, for example with ip-link(8):
```
ip link
```

The connection may be verified with ping:
```
ping archlinux.org
```

Install git and clone the repo
```
pacman -Sy git
git clone https://github.com/palitoschinos/instalarch

ls /sys/firmware/efi To enshure it is it UEFI
lsblk
```

To format /efi partition
```
mkfs.vfat -F 32 /dev/sdXX
```

To format /boot partition
```
mkfs.ext4 /dev/sdXY
```

 To know more about your hdrive
```
cfdisk
fdisk -l
```

Run first script
```
cd instalarch
source instalarch01.sh
```

- Ingrese el numero de la unidad donde se montara /swap:
- Ingrese el numero de la unidad donde se montara /root:
- Ingrese el numero de la unidad donde se montara /boot:
- Ingrese el numero de la unidad donde se montara /efi:
- Ingrese el numero de la unidad donde se montara /home:

Check where is home mounted
```
findmnt -n -o source --target /home
```

are we still alive?

```
systemctl enable iwd
timedatectl set-ntp yes
timedatectl set-timezone America/Argentina/Buenos_Aires

cd tmp
pacman -S git
git clone https://github.com/palitoschinos/instalarch
cd instalarch
source instalarch02.sh
```

are we still alive?
