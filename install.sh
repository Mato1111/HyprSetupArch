#!/bin/bash
# -*- coding: utf-8 -*-
echo "Make sure yay is installed before running! Kill the script if it isn't." && echo "Do not run the script from within Hyprland or Kitty." & sleep 10

########################

# Download wallpapers
cd ~/Downloads/ && wget https://github.com/Mato1111/HyprSetupArch/raw/main/Wallpapers/wallpapers978543.zip && unzip ~/Downloads/wallpapers978543.zip && mv ~/Downloads/HDD1/HyprSetupArch/Wallpapers/Wallpapers ~/Pictures/ && rm -rf ~/Downloads/HDD1/ && rm ~/Downloads/wallpapers978543.zip 

########################

# Remove conflicting portals
yay -R xdg-desktop-portal-kde xdg-desktop-portal-wlr xdg-desktop-portal-dde xdg-desktop-portal-gtk xdg-desktop-portal-lxqt xdg-desktop-portal-xapp xdg-desktop-portal-gnome xdg-desktop-portal-hyprland xdg-desktop-portal-wlr-git xdg-desktop-portal-td xdg-desktop-portal-git xdg-desktop-portal-rs xdg-desktop-portal-shana xdg-desktop-portal-termfilechooser-git xdg-desktop-portal-kde-git xdg-desktop-portal-gtk-git xdg-desktop-portal-luminous-git xdg-desktop-portal-liri-git xdg-desktop-portal-lxqt-git xdg-desktop-portal-gnome-noprompt-git xdg-desktop-portal-gnome-git xdg-desktop-portal-pantheon-git --noconfirm

########################

# Install packages
yay -S hyprland xdg-desktop-portal xdg-desktop-portal-hyprland kio-admin playerctl fish starship wget kitty kbd micro hyprshot waybar dunst ttf-font-awesome ttf-jetbrains-mono-nerd fuzzel wlogout copyq btop nvtop python python-pyqt5 ffmpeg linux-wallpaperengine-git waypaper-git swww polkit-kde-agent qt5ct kvantum layan-gtk-theme-git kora-icon-theme --noconfirm

########################

# Configs

# Run then kill the main programs to gen the ~/.config/folders and configs (No idea if this is actually needed)
Hyprland & waypaper & kvantummanager & qt5ct & qt6ct & nwg-look & dunst & kitty --override close_on_child_death=on btop & kitty --override close_on_child_death=on micro & kitty --override close_on_child_death=on fish & kitty & 
sleep 3.5
killall Hyprland waypaper kvantummanager qt5ct qt6ct nwg-look waybar btop micro dunst kitty 


# Make dirs
mkdir ~/.config/system_scripts/
mkdir ~/.config/waybar/
mkdir ~/.config/micro/colorschemes/
mkdir ~/.config/btop/

# Waybar/Spotify Script
cd ~/.config/system_scripts/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/system_scripts/mediaplayer.py

# Hyprland
cd ~/.config/hypr/ && rm hyprland.conf && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/hypr/hyprland.conf

# Waypaper
cd ~/.config/waypaper/ && rm config.ini && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waypaper/config.ini

# Kitty
cd ~/.config/kitty/ && rm kitty.conf && sleep 1
cd ~/.config/kitty/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/kitty.conf
cd ~/.config/kitty/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/current-theme.conf

# Fish
cd ~/.config/fish/ && rm config.fish && sleep 1
cd ~/.config/fish/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/config.fish
kitty --override close_on_child_death=on fish &
sleep 1
killall kitty
# Starship (Fish Customization)
cd ~/.config/ && rm ~/.config/starship.toml && sleep 1
cd ~/.config/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/starship.toml

# Waybar
cd ~/.config/waybar/ && rm config.jsonc && sleep 1 
cd ~/.config/waybar/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waybar/config.jsonc
cd ~/.config/waybar/ && rm style.css && sleep 1
cd ~/.config/waybar/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waybar/style.css

# Dunst
cd ~/.config/dunst/ && rm dunstrc && sleep 1
cd ~/.config/dunst/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/dunstrc

# btop
cd ~/.config/btop/ && rm btop.conf && sleep 1 && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/btop.conf

# Micro
cd ~/.config/micro/colorschemes/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/micro/monokaiBlur.micro
cd ~/.config/micro && rm settings.json && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/top/settings.json

########################

# Theming
# cd ~/ && wget https://raw.githubusercontent.com/vinceliuice/Layan-kde/master/install.sh && bash install.sh && rm install.sh
# gsettings set org.gnome.desktop.interface gtk-theme "Layan-Dark"

# cd ~/.config/Kvantum/ && rm kvantum.kvconfig && sleep 1
# cd ~/.config/Kvantum/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/Kvantum/kvantum.kvconfig
# cd ~/.config/qt5ct/ && rm qt5ct.conf && sleep 1
# cd ~/.config/qt5ct/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/Theme/qt5ct/qt5ct.conf

# Change Shell
chsh -s $(which fish)

########################

# Wallpaper Selector
mkdir ~/Downloads/WPSInstall/ && sleep 5
cd ~/Downloads/WPSInstall/ && wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/add-to-apps.sh & wget https://raw.githubusercontent.com/Mato1111/WallpaperEngine-Waypaper-Selector/main/install.sh
sleep 2
bash ~/Downloads/WPSInstall/install.sh
sleep 2
bash ~/Downloads/WPSInstall/add-to-apps.sh
sleep 2
cd ~/.config/WallpaperSelect/ && rm wallpaper.txt && sleep 1.5 && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/WallpaperSelect/wallpaper.txt
sleep 2
rm -rf ~/Downloads/WPSInstall/


echo " "
echo "Install complete. Please apply themes from Plasma with qt5ct, qt6ct, nwg-look, kvantum, and KDE settings. "