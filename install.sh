#!/bin/bash
# -*- coding: utf-8 -*-

yay -S wget --noconfirm
mkdir ~/.config/hypr/
cd ~/.config/hypr/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/hypr/hyprland.conf

mkdir ~/Pictures/Wallpapers/
cd ~/Pictures/Wallpapers/ && wget https://github.com/Mato1111/HyprSetupArch/raw/main/Wallpapers/wallpapers.zip

mkdir ~/.config/waypaper/
cd ~/.config/~/.config/waypaper/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waypaper/config.ini

yay -S hyprland-git waybar-hyprland-git dunst copyq python python-pyqt5 ffmpeg linux-wallpaperengine-git waypaper swaybg polkit-kde-agent qt5ct kvantum layan-gtk-theme-git --noconfirm

mkdir ~/Downloads/WPSInstall/
cd ~/Downloads/WPSInstall/ && wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/add-to-apps.sh & wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/install.sh
bash ~/Downloads/WPSInstall/install.sh
bash ~/Downloads/WPSInstall/add-to-apps.sh
cd ~/.config/WallpaperSelect/ && wget 

cd ~/ && wget https://raw.githubusercontent.com/vinceliuice/Layan-kde/master/install.sh && bash install.sh
gsettings set org.gnome.desktop.interface gtk-theme "Layan-Dark"
kvantummanager
qt5ct
