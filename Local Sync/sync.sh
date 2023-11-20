#!/bin/bash
# -*- coding: utf-8 -*-

rsync ~/.config/hypr/hyprland.conf /HDD1/HyprSetupArch/hypr/hyprland.conf
rsync -r --del ~/Pictures/Wallpapers /HDD1/HyprSetupArch/Wallpapers/
rsync ~/.config/WallpaperSelect/wallpaper.txt /HDD1/HyprSetupArch/WallpaperSelect/wallpaper.txt
rsync ~/.config/qt5ct/qt5ct.conf /HDD1/HyprSetupArch/Theme/qt5ct/qt5ct.conf
rsync ~/.config/Kvantum/kvantum.kvconfig /HDD1/HyprSetupArch/Theme/Kvantum/kvantum.kvconfig

zip -FS /HDD1/HyprSetupArch/Wallpapers/wallpapers.zip /HDD1/HyprSetupArch/Wallpapers/Wallpapers/*

cd /HDD1/HyprSetupArch/ && git commit -m "sync" -a && git push