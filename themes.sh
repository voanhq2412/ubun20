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

## Replace .bashrc, to change colors in Terminal
## Reference https://askubuntu.com/questions/123268/changing-colors-for-user-host-directory-information-in-terminal-command-prompt
# force_color_prompt=yes
# PS1='{debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
# alias ls='ls --color=never'
rm -f ~/.bashrc
cp .bashrc ~
