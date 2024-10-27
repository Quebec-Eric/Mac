#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt install -y gnome-tweaks git wget unzip
mkdir -p ~/.themes
mkdir -p ~/.icons
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
cd WhiteSur-gtk-theme
./install.sh -c dark -t all
cd ..
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd WhiteSur-icon-theme
./install.sh
cd ..
git clone https://github.com/ful1e5/apple_cursor.git
cd apple_cursor
sudo ./install.sh
cd ..
sudo apt install -y gnome-shell-extension-dash-to-dock
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"
gsettings set org.gnome.desktop.interface icon-theme "WhiteSur"
gsettings set org.gnome.desktop.interface cursor-theme "macOS"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
echo "Instalação concluída! Você pode precisar reiniciar ou fazer logout para que todas as alterações tenham efeito."
