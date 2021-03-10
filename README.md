# Barrier-install
A simple Linux installer for barrier a cross platform software, for sharing a single mouse and keyboard

# distribo
* Deb
* Ubuntu < not tested yet 

# Install 

* git clone https://github.com/x0xr00t/Barrier-install/ && cd Barrier-install && chmod +x install.sh && ./install.sh

# Flatpak install 

* git clone https://github.com/x0xr00t/Barrier-install/ && cd Barrier-install && chmod +x flatpak-install.sh && ./flatpak-install.sh

## incase the system needs a reboot and can't exec com.github.debauchee.barrier.flatpakref
## Exec these commands after reboot =)

* cd /home/{Your-User}/barrier-install 
* flatpak install com.github.debauchee.barrier.flatpakref
