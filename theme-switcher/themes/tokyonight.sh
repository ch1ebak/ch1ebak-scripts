#!/bin/bash

# alacritty
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.config/alacritty/alacritty.toml

# btop
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's/20242d/1a1b26/g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's/b3b8c3/a9b1d6/g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's/b04b57/f7768e/g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "hello!" &

# neovim
mv /home/$USER/.dotfiles/.config/nvim/lua/plugins/nordic.lua /home/$USER/.dotfiles/.config/nvim/lua/plugins/nordic.lua.bak
mv /home/$USER/.dotfiles/.config/nvim/lua/plugins/tokyo-night.lua.bak /home/$USER/.dotfiles/.config/nvim/lua/plugins/tokyo-night.lua
sed -i 's/nord/tokyonight/g' /home/kd/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# qtile
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.config/qtile/config.py

# rofi
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# Xresources
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# spicetify
sed -i 's/Spacegray/TokyoNight/g' /home/$USER/.dotfiles/.config/spicetify/config-xpui.ini
spicetify apply
