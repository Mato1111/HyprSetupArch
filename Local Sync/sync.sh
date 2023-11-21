#!/bin/bash
# -*- coding: utf-8 -*-

# Configs
rsync ~/.config/hypr/hyprland.conf /HDD1/HyprSetupArch/hypr/hyprland.conf &
rsync ~/.config/WallpaperSelect/wallpaper.txt /HDD1/HyprSetupArch/WallpaperSelect/wallpaper.txt &
rsync ~/.config/qt5ct/qt5ct.conf /HDD1/HyprSetupArch/Theme/qt5ct/qt5ct.conf &
rsync ~/.config/Kvantum/kvantum.kvconfig /HDD1/HyprSetupArch/Theme/Kvantum/kvantum.kvconfig &
rsync ~/.config/waybar/config.jsonc /HDD1/HyprSetupArch/waybar/config.jsonc &
rsync ~/.config/waybar/style.css /HDD1/HyprSetupArch/waybar/style.css &
rsync ~/.config/btop/btop.conf /HDD1/HyprSetupArch/top/btop.conf &
rsync ~/.config/micro/settings.json /HDD1/HyprSetupArch/top/settings.json &
rsync ~/.config/kitty/kitty.conf /HDD1/HyprSetupArch/top/kitty.conf &
rsync ~/.config/starship.toml /HDD1/HyprSetupArch/top/starship.toml &
rsync ~/.config/fish/config.fish /HDD1/HyprSetupArch/top/config.fish &
rsync ~/.config/dunst/dunstrc /HDD1/HyprSetupArch/top/dunstrc


# Wallpapers
rsync -r --del ~/Pictures/Wallpapers /HDD1/HyprSetupArch/Wallpapers/
zip -FS /HDD1/HyprSetupArch/Wallpapers/wallpapers978543.zip /HDD1/HyprSetupArch/Wallpapers/Wallpapers/*

# Commit aks Push
cd /HDD1/HyprSetupArch/ && git commit -m "sync" -a && git push