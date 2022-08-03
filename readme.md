# Instaling arch linux
Something like that

Load es kayboard
```
loadkeys es
```

Install git and clone the repo
```
pacman -Sy git
git clone https://github.com/palitoschinos/instalarch

ls /sys/firmware/efi To enshure it is it UEFI
lsblk

if U need to format /efi partition
mkfs.vfat -F 32 /dev/sdXX

if U need to format /boot partition
mkfs.ext4 /dev/sdXY

if U need to know more about your hdrive
cfdisk
fdisk -l

cd instalarch
source instalarch01.sh
```
