#!/bin/sh

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
