# ! /bin/bash

# # List recently Installed 
# # grep " install " /var/log/dpkg.log

# # list all preinstalled apps
# # dpkg -S desktop | grep "\.desktop$" | awk '{print $1}' | sed 's/://' | sort -u

# # Check drivers in use
# # lspci -k | grep -EA3 'VGA|3D|Display' 

# # To remove old headers and images
# # list them
# # dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d'
# # Make sure the current kernel isn't gonna be deleted
# # uname -r
# # Delete
# # dpkg -l 'linux-*' | sed '/^ii/!d;/'"$(uname -r | sed "s/\(.*\)-\([^0-9]\+\)/\1/")"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge



# # Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb

# # Uninstall unnecessary programs
sudo apt-get purge -y --auto-remove gnome-power-manager gnome-calculator gnome-calendar gnome-screenshot gnome-font-viewer gnome-characters evince orca seahorse firefox emacs-gtk emacs-lucid speech-dispatcher spice-vdagent vim-common gnome-startup-applications apport apport-gtk 

# remove firefox
sudo snap remove firefox

# # Get latest system update
sudo apt --fix-broken install && sudo apt -y update && sudo apt -y upgrade && sudo apt -y dist-upgrade

# Install wps ###
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10976/wps-office_11.1.0.10976.XA_amd64.deb
sudo dpkg -i wps-office_11.1.0.10976.XA_amd64.deb
wget https://mirror.umd.edu/ubuntu/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.13_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2.13_amd64.deb
#####


# Obinskit for anne pro2
wget https://s3.hexcore.xyz/occ/linux/deb/ObinsKit_1.2.11_x64.deb
sudo dpkg -i ObinsKit_1.2.11_x64.deb


# # install snap apss
sudo snap install vlc pinta docker

# # install nodejs, vscode
sudo snap install node --classic
sudo snap install code --classic


# # Install apps
sudo apt-get -y install gnome-tweaks gnome-shell-extensions chrome-gnome-shell stacer ffmpegthumbnailer dkms
## enable firewall
sudo ufw enable

## Gnome Shell: Disable freqeunt apps 
gsettings set org.gnome.desktop.privacy remember-app-usage false


# Install Tabby Terminal and copy config file
wget https://github.com/Eugeny/tabby/releases/download/v1.0.170/tabby-1.0.170-linux.deb
sudo apt -y install ./tabby-1.0.170-linux.deb
tabby
cp config.yaml ~/.config/tabby/
