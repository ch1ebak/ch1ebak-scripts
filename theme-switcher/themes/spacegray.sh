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

# qtile
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.config/qtile/config.py

# rofi
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
sed -i 's/TokyoNight/Spacegray/g' /home/$USER/.dotfiles/.config/spicetify/config-xpui.ini
spicetify apply

# Xresources
sed -i 's/tokyonight/spacegray/g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
