#!/bin/bash
# -*- coding: utf-8 -*-

# Wallpapers
rsync -r --del --inplace -U -u ~/Pictures/Wallpapers /HDD1/HyprSetupArch/Wallpapers/
sleep 0.5
# zip -0 -FS /HDD1/HyprSetupArch/Wallpapers/wallpapers978543.zip /HDD1/HyprSetupArch/Wallpapers/Wallpapers/*

# Configs
rsync -r --del --inplace -U -u -p ~/.config/ /HDD1/.config/
rsync -r --del --inplace -U -u -p ~/.local/share/PrismLauncher /HDD1/.local/
rsync -r --del --inplace -U -u -p ~/.local/share/plasma /HDD1/.local/
rsync ~/.config/hypr/hyprland.conf /HDD1/HyprSetupArch/hypr/hyprland.conf
rsync ~/.config/WallpaperSelect/wallpaper.txt /HDD1/HyprSetupArch/WallpaperSelect/wallpaper.txt
rsync ~/.config/qt5ct/qt5ct.conf /HDD1/HyprSetupArch/Theme/qt5ct/qt5ct.conf
rsync ~/.config/Kvantum/kvantum.kvconfig /HDD1/HyprSetupArch/Theme/Kvantum/kvantum.kvconfig
rsync ~/.config/waybar/config.jsonc /HDD1/HyprSetupArch/waybar/config.jsonc
rsync ~/.config/waybar/style.css /HDD1/HyprSetupArch/waybar/style.css
rsync ~/.config/btop/btop.conf /HDD1/HyprSetupArch/top/btop.conf
rsync ~/.config/micro/settings.json /HDD1/HyprSetupArch/top/settings.json
rsync ~/.config/kitty/kitty.conf /HDD1/HyprSetupArch/top/kitty.conf
rsync ~/.config/kitty/current-theme.conf /HDD1/HyprSetupArch/top/current-theme.conf
rsync ~/.config/starship.toml /HDD1/HyprSetupArch/top/starship.toml
rsync ~/.config/fish/config.fish /HDD1/HyprSetupArch/top/config.fish
rsync ~/.config/dunst/dunstrc /HDD1/HyprSetupArch/top/dunstrc
rsync ~/.config/rofi/config.rasi /HDD1/HyprSetupArch/rofi/config.rasi
rsync ~/.config/rofi/Monokai-copy.rasi /HDD1/HyprSetupArch/rofi/Monokai-copy.rasi 

yay -Q > /HDD1/installed.txt
yay -Qe > /HDD1/installed-explicit.txt

# Commit and Push
cd /HDD1/HyprSetupArch/ && git commit -m "sync" -a
sleep 3 && git push

# Reduce local file size
cd /HDD1/HyprSetupArch/ && git repack -a -d