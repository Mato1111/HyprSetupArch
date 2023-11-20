#!/bin/bash
# -*- coding: utf-8 -*-

rsync ~/.config/hypr/hyprland.conf /HDD1/HyprSetupArch/hypr/hyprland.conf
rsync ~/.config/waypaper/config.ini /HDD1/HyprSetupArch/waypaper/config.ini
rsync -r --del ~/Pictures/Wallpapers /HDD1/HyprSetupArch/Wallpapers/
cd /HDD1/HyprSetupArch/ && git push