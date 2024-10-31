#!/bin/bash

echo -e "
                                                                     
▗▄▄▄▖▗▖ ▗▖▗▄▄▄▖▗▖  ▗▖▗▄▄▄▖     ▗▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▄▖▗▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▖ 
  █  ▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌       ▐▌   ▐▌ ▐▌  █    █ ▐▌   ▐▌ ▐▌▐▌   ▐▌ ▐▌
  █  ▐▛▀▜▌▐▛▀▀▘▐▌  ▐▌▐▛▀▀▘     ▝▀▚▖▐▌ ▐▌  █    █ ▐▌   ▐▛▀▜▌▐▛▀▀▘▐▛▀▚▖
  █  ▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▐▙▄▄▖    ▗▄▄▞▘▐▙█▟▌▗▄█▄▖  █ ▝▚▄▄▖▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌
                                                                     
"

catppuccin () {
  echo "Changing theme to $opt"
  ./theme-switcher/themes/catppuccin.sh
}

dracula () {
  echo "Changing theme to $opt"
  ./theme-switcher/themes/dracula.sh
}

gruvbox () {
  echo "Changing theme to $opt"
  ./theme-switcher/themes/gruvbox.sh
}

spacegray () {
    echo "Changing theme to $opt"
    ./theme-switcher/themes/spacegray.sh
}

tokyonight () {
  echo "Changing theme to $opt"
  ./theme-switcher/themes/tokyonight.sh
}

while true; do
    options=("Catppuccin" "Dracula" "Gruvbox" "Spacegray" "Tokyo Night" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) catppuccin; break ;;
            2) dracula; break ;;
            3) gruvbox; break ;;
            4) spacegray; break ;;
            5) tokyonight; break ;;
            6) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done
