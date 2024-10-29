#!/bin/bash

echo -e "
                                                             
 ▗▄▖▗▄▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▖      ▗▄▄▖ ▗▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▖▗▄▄▄▖▗▄▄▖
▐▌ ▐▌ █  ▐▌ ▐▌▐▌   ▐▌ ▐▌    ▐▌   ▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌ █ ▐▌   
▐▌ ▐▌ █  ▐▛▀▜▌▐▛▀▀▘▐▛▀▚▖     ▝▀▚▖▐▌   ▐▛▀▚▖  █  ▐▛▀▘  █  ▝▀▚▖
▝▚▄▞▘ █  ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌    ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▗▄█▄▖▐▌    █ ▗▄▄▞▘
                                                             
"

system-cleanup () {
    echo "Launching $opt"
    ./other/scripts/cleanup.sh
}

remove-emacs () {
    echo "Launching $opt"
    ./other/scripts/emacs.sh
}

remove-neovim () {
    echo "Launching $opt"
    ./other/scripts/neovim.sh
}

remove-hyprland () {
    echo "Launching $opt"
    ./other/scripts/hyprland.sh
}

remove-qtile () {
    echo "Launching $opt"
    ./other/scripts/qtile.sh
}

remove-vm () {
    echo "Launching $opt"
    ./other/scripts/vm.sh
}

while true; do
    options=("System Cleanup" "Remove Emacs" "Remove Neovim" "Remove Hyprland" "Remove Qtile" "Remove VM" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) system-cleanup; break ;;
            2) remove-emacs; break ;;
            3) remove-neovim; break ;;
            4) remove-hyprland; break ;;
            5) remove-qtile; break ;;
            6) remove-vm; break ;;
            7) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done
