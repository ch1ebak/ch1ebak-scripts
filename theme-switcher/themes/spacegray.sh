#!/bin/bash

# alacritty
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.config/alacritty/alacritty.toml

# btop
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's/1a1b26/20242d/g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's/a9b1d6/b3b8c3/g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's/f7768e/b04b57/g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "hello!" &

# neovim
mv /home/$USER/.dotfiles/.config/nvim/lua/plugins/tokyo-night.lua /home/$USER/.dotfiles/.config/nvim/lua/plugins/tokyo-night.lua.bak
mv /home/$USER/.dotfiles/.config/nvim/lua/plugins/nordic.lua.bak /home/$USER/.dotfiles/.config/nvim/lua/plugins/nordic.lua
sed -i 's/tokyonight/nord/g' /home/kd/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# qtile
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.config/qtile/config.py

# rofi
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# Xresources
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# spicetify
sed -i 's/TokyoNight/Spacegray/g' /home/$USER/.dotfiles/.config/spicetify/config-xpui.ini
spicetify apply
