#!/bin/bash
# -*- coding: utf-8 -*-
echo "Make sure yay is installed before running! Kill the script if it isn't."
sleep 4

mkdir ~/Pictures/Wallpapers/
cd ~/Downloads/ && wget https://github.com/Mato1111/HyprSetupArch/raw/main/Wallpapers/wallpapers978543.zip
unzip ~/Downloads/wallpapers978543.zip

yay -R xdg-desktop-portal-kde xdg-desktop-portal-wlr xdg-desktop-portal-dde xdg-desktop-portal-gtk xdg-desktop-portal-lxqt xdg-desktop-portal-xapp xdg-desktop-portal-gnome xdg-desktop-portal-hyprland xdg-desktop-portal-wlr-git xdg-desktop-portal-td xdg-desktop-portal-git xdg-desktop-portal-rs xdg-desktop-portal-shana xdg-desktop-portal-termfilechooser-git xdg-desktop-portal-kde-git xdg-desktop-portal-gtk-git xdg-desktop-portal-luminous-git xdg-desktop-portal-liri-git xdg-desktop-portal-lxqt-git xdg-desktop-portal-gnome-noprompt-git xdg-desktop-portal-gnome-git xdg-desktop-portal-pantheon-git 
yay -S hyprland-git xdg-desktop-portal xdg-desktop-portal-hyprland-git wget waybar-hyprland dunst copyq python python-pyqt5 ffmpeg linux-wallpaperengine-git waypaper swaybg polkit-kde-agent qt5ct kvantum layan-gtk-theme-git kora-icon-theme --noconfirm
Hyprland & waypaper & kvantummanager & qt5ct & waybar &
sleep 4
killall Hyprland waypaper kvantummanager qt5ct waybar

cd ~/.config/hypr/ && rm hyprland.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/hypr/hyprland.conf
cd ~/.config/~/.config/waypaper/ && rm config.ini && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waypaper/config.ini
cd ~/.config/waybar/ && rm config.jsonc && wget https://github.com/Mato1111/HyprSetupArch/raw/main/waybar/config.jsonc
cd ~/.config/waybar/ && rm style.css && wget https://github.com/Mato1111/HyprSetupArch/raw/main/waybar/style.css

cd ~/ && wget https://raw.githubusercontent.com/vinceliuice/Layan-kde/master/install.sh && bash install.sh && rm install.sh
gsettings set org.gnome.desktop.interface gtk-theme "Layan-Dark"
cd ~/.config/Kvantum/ && rm kvantum.kvconfig && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/Kvantum/kvantum.kvconfig
cd ~/.config/qt5ct/ && rm qt5ct.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/qt5ct/qt5ct.conf

mkdir ~/Downloads/WPSInstall/
cd ~/Downloads/WPSInstall/ && wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/add-to-apps.sh & wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/install.sh
bash ~/Downloads/WPSInstall/install.sh
bash ~/Downloads/WPSInstall/add-to-apps.sh
cd ~/.config/WallpaperSelect/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/WallpaperSelect/wallpaper.txt