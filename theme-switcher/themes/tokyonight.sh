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

# qtile
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.config/qtile/config.py

# rofi
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
sed -i 's/Spacegray/TokyoNight/g' /home/$USER/.dotfiles/.config/spicetify/config-xpui.ini
spicetify apply

# Xresources
sed -i 's/spacegray/tokyonight/g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
