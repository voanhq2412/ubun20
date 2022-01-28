# ! /bin/bash

# # List recently Installed 
# # grep " install " /var/log/dpkg.log

# # list all preinstalled apps
# # dpkg -S desktop | grep "\.desktop$" | awk '{print $1}' | sed 's/://' | sort -u

# # Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb

# # Uninstall unnecessary programs
sudo apt-get purge -y --auto-remove gnome-power-manager gnome-calculator gnome-calendar gnome-screenshot gnome-font-viewer gnome-characters evince orca seahorse firefox emacs-gtk emacs-lucid speech-dispatcher spice-vdagent vim-common gnome-startup-applications apport apport-gtk  

# # Get latest system update
sudo apt --fix-broken install && sudo apt -y update && sudo apt -y upgrade && sudo apt -y dist-upgrade

# # Install wps
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10702/wps-office_11.1.0.10702.XA_amd64.deb
sudo apt -y install ./wps-office_11.1.0.10702.XA_amd64.deb

# # install snap apss
sudo snap install vlc pinta

# # install nodejs, vscode
sudo snap install node --classic
sudo snap install code --classic

# # stacer
sudo add-apt-repository ppa:oguzhaninan/stacer 

# # Install apps
sudo apt-get -y install stacer gnome-tweak-tool gnome-shell-extensions chrome-gnome-shell

## enable firewall
sudo ufw enable

## Gnome Shell: Disable freqeunt apps 
gsettings set org.gnome.desktop.privacy remember-app-usage false

# wget https://github.com/vercel/hyper/releases/download/v3.1.5/hyper_3.1.5_amd64.deb
# sudo apt -y install ./hyper_3.1.5_amd64.deb