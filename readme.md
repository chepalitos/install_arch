# Instaling arch linux
Something like that

Load es kayboard
```
loadkeys es
```

Ensure your network interface is listed and enabled:
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
git clone https://github.com/palitoschinos/instalarch.git
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

deprecated commands
```
systemctl enable iwd
timedatectl set-ntp yes
timedatectl set-timezone America/Argentina/Buenos_Aires
```

second partition
```
cd tmp
pacman -S git
git clone https://github.com/palitoschinos/instalarch
cd instalarch
source instalarch02.sh
```

are we still alive?
