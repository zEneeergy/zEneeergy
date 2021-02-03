#!/bin/bash
echo -e "\e[1;34m:: \033[1;97mInstalling Arch Linux at $1..."
sleep 5
pacstrap $@ base base-devel linux linux-firmware linux-headers wget curl ntfs-3g tar gzip bzip2 \
unzip unrar p7zip alsa-lib alsa-utils alsa-firmware alsa-plugins pulseaudio-alsa pulseaudio git plasma \
sddm okular gwenview firefox vlc dolphin kwrite kwalletmanager ark spectacle calligra konsole kate \
kcalc ktimer kolourpaint dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant \
wireless_tools dialog sudo man-db man-pages texinfo nano vim grub xf86-video-intel libgl mesa intel-ucode \
alsa-driver alsa-utils alsa-libs alsa-oss kdialog
echo -e "\e[1;34m:: \033[1;97mGenerating $1 fstab at $1/etc/fstab..."
genfstab -U -p $1 >> $1/etc/fstab
