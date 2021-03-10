#!/bin/sh
#
# Author : P.Hoogeveen
# AkA    : x0xr00t 
# Build  : 20211003
# 
# This is a simple installer for linux >> Deb  
# to test > ubuntu 
# 

# Root check
if [ "$EUID" -ne 0 ]
  then echo -e "Please use root for this installer"
  exit
fi

# Barrier install check
Br="Barrier"
if [ -x /bin/cmake ]; then
    echo "{v} It appears that $Br exists :D"
else
    echo "{x} Arggg...It appears that $Br does not exist, we will install it. =)"
    apt install barrier -y
fi
