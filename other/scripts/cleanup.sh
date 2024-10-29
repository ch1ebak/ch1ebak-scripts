#!/bin/bash

trash-empty
paru -Rns $(pacman -Qtdq)
