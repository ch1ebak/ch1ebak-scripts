#!/bin/bash

# alacritty
sed -i 's@themes/*.*@themes/dracula.toml"@g' /home/$USER/.dotfiles/.config/alacritty/alacritty.toml

# btop
sed -i 's@themes/*.*@themes/dracula.theme"@g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#282A36"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#E6E6E6"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#5AF78E"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Dracula" &

# neovim
sed -i "s@colorscheme\ *.*@colorscheme dracula'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'dracula-nvim',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# qtile
sed -i 's/themes.*\ import\ colors/themes.dracula\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/dracula.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py

# rofi
sed -i 's@themes/*.*@themes/dracula"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme Dracula
spicetify apply

# Startpage
sed -i 's@assets/*.*@assets/style-dracula.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Xresources
sed -i 's@xresources/*.*@xresources/dracula"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
