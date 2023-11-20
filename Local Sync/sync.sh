#!/bin/bash
# -*- coding: utf-8 -*-

rsync ~/.config/hypr/hyprland.conf /HDD1/HyprSetupArch/hypr/hyprland.conf
rsync -r --del ~/Pictures/Wallpapers /HDD1/HyprSetupArch/Wallpapers/

zip -f -FS /HDD1/HyprSetupArch/Wallpapers/wallpapers.zip /HDD1/HyprSetupArch/Wallpapers/Wallpapers/*

cd /HDD1/HyprSetupArch/ && git commit -m "sync" -a && git push