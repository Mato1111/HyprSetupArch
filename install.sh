#!/bin/bash
# -*- coding: utf-8 -*-
echo "Make sure yay is installed before running! Kill the script if it isn't." & sleep 6

# Download wallpapers
cd ~/Downloads/ && wget https://github.com/Mato1111/HyprSetupArch/raw/main/Wallpapers/wallpapers978543.zip && unzip ~/Downloads/wallpapers978543.zip && mv ~/Downloads/HDD1/HyprSetupArch/Wallpapers/Wallpapers ~/Pictures/ && rm -rf ~/Downloads/HDD1/ && rm ~/Downloads/wallpapers978543.zip 

# Remove conflicting portals
yay -R xdg-desktop-portal-kde xdg-desktop-portal-wlr xdg-desktop-portal-dde xdg-desktop-portal-gtk xdg-desktop-portal-lxqt xdg-desktop-portal-xapp xdg-desktop-portal-gnome xdg-desktop-portal-hyprland xdg-desktop-portal-wlr-git xdg-desktop-portal-td xdg-desktop-portal-git xdg-desktop-portal-rs xdg-desktop-portal-shana xdg-desktop-portal-termfilechooser-git xdg-desktop-portal-kde-git xdg-desktop-portal-gtk-git xdg-desktop-portal-luminous-git xdg-desktop-portal-liri-git xdg-desktop-portal-lxqt-git xdg-desktop-portal-gnome-noprompt-git xdg-desktop-portal-gnome-git xdg-desktop-portal-pantheon-git --noconfirm

# Install packages
yay -S hyprland-git xdg-desktop-portal xdg-desktop-portal-hyprland-git wget kitty micro waybar-hyprland dunst fuzzel wlogout copyq btop nvtop python python-pyqt5 ffmpeg linux-wallpaperengine-git waypaper swaybg polkit-kde-agent qt5ct kvantum layan-gtk-theme-git kora-icon-theme --noconfirm

# Run then kill the main programs to gen the ~/.config/folders and configs (No idea if this is actually needed)
Hyprland & waypaper & kvantummanager & qt5ct & waybar & kitty --override close_on_child_death=on btop & kitty --override close_on_child_death=on micro & 
sleep 3.5
killall Hyprland waypaper kvantummanager qt5ct waybar btop micro

# Replace configs
mkdir ~/.config/system_scripts/
cd ~/.config/system_scripts/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/system_scripts/mediaplayer.py
cd ~/.config/hypr/ && rm hyprland.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/hypr/hyprland.conf
cd ~/.config/waypaper/ && rm config.ini && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waypaper/config.ini
cd ~/.config/waybar/ && rm config.jsonc && wget https://github.com/Mato1111/HyprSetupArch/raw/main/waybar/config.jsonc
cd ~/.config/waybar/ && rm style.css && wget https://github.com/Mato1111/HyprSetupArch/raw/main/waybar/style.css
cd ~/.config/btop/ && rm btop.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/btop.conf
cd ~/.config/micro && rm settings.json && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/settings.json

# Theming
cd ~/ && wget https://raw.githubusercontent.com/vinceliuice/Layan-kde/master/install.sh && bash install.sh && rm install.sh
gsettings set org.gnome.desktop.interface gtk-theme "Layan-Dark"
cd ~/.config/Kvantum/ && rm kvantum.kvconfig && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/Kvantum/kvantum.kvconfig
cd ~/.config/qt5ct/ && rm qt5ct.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/qt5ct/qt5ct.conf

# Wallpaper Selector
mkdir ~/Downloads/WPSInstall/
cd ~/Downloads/WPSInstall/ && wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/add-to-apps.sh & wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/install.sh
bash ~/Downloads/WPSInstall/install.sh
bash ~/Downloads/WPSInstall/add-to-apps.sh
cd ~/.config/WallpaperSelect/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/WallpaperSelect/wallpaper.txt
rm -rf ~/Downloads/WPSInstall/

echo "Install complete."