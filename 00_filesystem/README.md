To generate a gk filesystem in Raw SD mode on device /dev/sdX:

sudo sfdisk /dev/sdX < gk.sfdisk
sudo mkfs.vfat /dev/sdX1
sudo mkfs.ext4 -O ^64bit,^metadata_csum /dev/sdX2
