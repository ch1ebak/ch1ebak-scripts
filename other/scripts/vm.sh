#!/bin/bash

echo -e "
                      
▗▄▄▄▖ ▗▄▄▄▖▗▖  ▗▖▗▖ ▗▖
▐▌ ▐▌ ▐▌   ▐▛▚▞▜▌▐▌ ▐▌
▐▌ ▐▌ ▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌
▐▙▄▟▙▖▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘
                      
"

LIST_OF_APPS="
dmidecode
dnsmasq
iptables-nft
libvirt
qemu-base
virt-manager
"

paru -Rns $LIST_OF_APPS
