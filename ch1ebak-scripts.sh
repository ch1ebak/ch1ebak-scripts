#!/bin/bash

echo -e "
                                                                        
 ▗▄▄▖▗▖ ▗▖▗▖   ▗▄▄▄▖▗▄▄▖  ▗▄▖ ▗▖ ▗▖     ▗▄▄▖ ▗▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▖▗▄▄▄▖▗▄▄▖
▐▌   ▐▌ ▐▌▐▌   ▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌▗▞▘    ▐▌   ▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌ █ ▐▌   
▐▌   ▐▛▀▜▌▐▌   ▐▛▀▀▘▐▛▀▚▖▐▛▀▜▌▐▛▚▖      ▝▀▚▖▐▌   ▐▛▀▚▖  █  ▐▛▀▘  █  ▝▀▚▖
▝▚▄▄▖▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖▐▙▄▞▘▐▌ ▐▌▐▌ ▐▌    ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▗▄█▄▖▐▌    █ ▗▄▄▞▘
                                                                        
"

chmod -R +x other/*
chmod -R +x theme-switcher/*

theme-switcher () {
    echo "Launching $opt"
    ./theme-switcher/theme-switcher.sh
}

other-scripts () {
    echo "Launching $opt"
    ./other/other-scripts.sh
}

while true; do
    options=("Theme Switcher" "Other Scripts" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) theme-switcher; break ;;
            2) other-scripts; break ;;
            3) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done

echo -e "
                                        
 ▗▄▖ ▗▖   ▗▖       ▗▄▄▄  ▗▄▖ ▗▖  ▗▖▗▄▄▄▖
▐▌ ▐▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▛▚▖▐▌▐▌   
▐▛▀▜▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▌ ▝▜▌▐▛▀▀▘
▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▙▄▄▀▝▚▄▞▘▐▌  ▐▌▐▙▄▄▖
                                        
"
