#!/bin/bash
# -*- coding: utf-8 -*-
echo "Make sure yay is installed before running! Kill the script if it isn't."
sleep 4

mkdir ~/Pictures/Wallpapers/
cd ~/Pictures/Wallpapers/ && wget https://github.com/Mato1111/HyprSetupArch/raw/main/Wallpapers/wallpapers.zip

yay -S hyprland-git wget waybar-hyprland dunst copyq python python-pyqt5 ffmpeg linux-wallpaperengine-git waypaper swaybg polkit-kde-agent qt5ct kvantum layan-gtk-theme-git kora-icon-theme --noconfirm
Hyprland & waypaper & kvantummanager & qt5ct &
sleep 4
killall Hyprland waypaper kvantummanager qt5ct

cd ~/.config/hypr/ && rm hyprland.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/hypr/hyprland.conf
cd ~/.config/~/.config/waypaper/ && rm config.ini && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waypaper/config.ini

cd ~/ && wget https://raw.githubusercontent.com/vinceliuice/Layan-kde/master/install.sh && bash install.sh && rm install.sh
gsettings set org.gnome.desktop.interface gtk-theme "Layan-Dark"
cd ~/.config/Kvantum/ && rm kvantum.kvconfig && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/Kvantum/kvantum.kvconfig
cd ~/.config/qt5ct/ && rm qt5ct.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/qt5ct/qt5ct.conf

mkdir ~/Downloads/WPSInstall/
cd ~/Downloads/WPSInstall/ && wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/add-to-apps.sh & wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/install.sh
bash ~/Downloads/WPSInstall/install.sh
bash ~/Downloads/WPSInstall/add-to-apps.sh
cd ~/.config/WallpaperSelect/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/WallpaperSelect/wallpaper.txt