#!/bin/sh
#
# Author : P.Hoogeveen
# AkA    : x0xr00t 
# Build  : 20211003
# 
# This is a simple installer for FlatPack linux >> Deb  
# to test > ubuntu 
# 

read -p "Please enter the username: " user

# Root check
if [ "$EUID" -ne 0 ]
  then echo -e "Please use ${RED_TEXT}root${GREEN_TEXT}for this installer"
  exit
fi

# FlatPack install check
flatpak="flatpak"
if [ -x /bin/cmake ]; then
    echo "{v} It appears that $flatpak exists :D"
else
    echo "{x} Arggg...It appears that $flatpak does not exist, we will install it."
    apt install flatpak -y
fi

# Install the Software Flatpak plugin
apt install gnome-software-plugin-flatpak -y

# Add the Flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo 

cd /home/$user/barrier-install
flatpak install com.github.debauchee.barrier.flatpakref

# reboot system to make it working 
reboot
