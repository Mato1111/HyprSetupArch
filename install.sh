#!/bin/bash
# -*- coding: utf-8 -*-

yay -S wget --noconfirm
mkdir ~/.config/hypr/
cd ~/.config/hypr/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/hypr/hyprland.conf

cd ~

mkdir ~/.config/waypaper/
cd ~/.config/~/.config/waypaper/ && wget https://raw.githubusercontent.com/Mato1111/HyprSetupArch/main/waypaper/config.ini

yay -S hyprland-git waybar-hyprland dunst copyq python python-pyqt5 ffmpeg linux-wallpaperengine-git waypaper swaybg polkit-kde-agent qt5ct kvantum layan-gtk-theme-git --noconfirm

mkdir ~/Pictures/Wallpapers/


cd ~/ && wget https://raw.githubusercontent.com/vinceliuice/Layan-kde/master/install.sh && bash install.sh


gsettings set org.gnome.desktop.interface gtk-theme "Layan-Dark"
kvantummanager
qt5ct
