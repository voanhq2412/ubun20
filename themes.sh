# # Themes
git clone https://github.com/EliverLara/Ant.git
git clone https://github.com/EliverLara/Ant-Nebula.git
git clone https://github.com/dracula/gtk.git
git clone https://github.com/EliverLara/Ant-Bloody.git

sudo mv ./Ant /usr/share/themes
sudo mv ./Ant-Nebula /usr/share/themes
sudo mv ./Ant-Bloody /usr/share/themes
sudo mv ./gtk /usr/share/themes

# Fonts
sudo apt install -y fonts-roboto

# # Wallpapers
sudo cp -a ./Wallpapers/. /usr/share/backgrounds

# Disable Terminal Directory Highlighting
echo "" >> ~/.bashrc
echo "LS_COLORS=$LS_COLORS:'ow=1;34:' ; export LS_COLORS" >> ~/.bashrc
