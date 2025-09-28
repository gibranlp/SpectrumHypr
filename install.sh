#!/usr/bin/env bash
# _____             _                 _____ _____ 
#|   __|___ ___ ___| |_ ___ _ _ _____|     |   __|
#|__   | . | -_|  _|  _|  _| | |     |  |  |__   |
#|_____|  _|___|___|_| |_| |___|_|_|_|_____|_____|
#      |_|   
# SpectrumOS - Embrace the Chromatic Symphony!
# By: gibranlp <thisdoesnotwork@gibranlp.dev>
# MIT licence 
# 
#

function install_base() {
    packets=(
        'thefuck' 'fortune-mod' 'cowsay' 'hyprpaper' 'blueman' 'swww'
    )
}



function install_AUR() { 
    packets=(
        'plymouth-git'
    )
}