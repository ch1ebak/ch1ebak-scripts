#!/bin/bash

# alacritty
sed -i 's@themes/*.*@themes/tokyonight.toml"@g' /home/$USER/.dotfiles/.config/alacritty/alacritty.toml

# btop
sed -i 's@themes/*.*@themes/tokyonight.theme"@g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1a1b26"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#a9b1d6"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#f7768e"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Tokyo Night" &

# neovim
sed -i "s@colorscheme\ *.*@colorscheme tokyonight'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'tokyonight',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# qtile
sed -i 's/themes.*\ import\ colors/themes.tokyonight\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/tokyonight.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py

# rofi
sed -i 's@themes/*.*@themes/tokyonight"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme TokyoNight
spicetify apply

# Startpage
sed -i 's@assets/*.*@assets/style-tokyonight.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Xresources
sed -i 's@xresources/*.*@xresources/tokyonight"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
