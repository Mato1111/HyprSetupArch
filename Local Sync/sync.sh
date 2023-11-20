#!/bin/bash
# -*- coding: utf-8 -*-

rsync ~/.config/hypr/hyprland.conf /HDD1/HyprSetupArch/hypr/hyprland.conf
rsync -r --del ~/Pictures/Wallpapers /HDD1/HyprSetupArch/Wallpapers/
rsync ~/.config/WallpaperSelect/wallpaper.txt /HDD1/HyprSetupArch/WallpaperSelect/wallpaper.txt

zip -FS /HDD1/HyprSetupArch/Wallpapers/wallpapers.zip /HDD1/HyprSetupArch/Wallpapers/Wallpapers/*

cd /HDD1/HyprSetupArch/ && git commit -m "sync" -a && git push