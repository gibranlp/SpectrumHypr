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
        'thefuck' 'fortune-mod' 'cowsay' 'blueman' 'bluez'
        'bluez-tools' 'bluez-utils' 'blueman' 'noto-fonts-emoji'
        'ttf-dejavu' 'ttf-liberation' 'ttf-opensans' 'gnome-disk-utility' 'networkmanager' 'unzip' 'xarchiver'
    )

    for packet in "${packets[@]}"; do
        echo "Instalando --> ${packet}"
        sudo pacman -S "${packet}" --noconfirm --needed
    done
}



function install_AUR() { 
    packets=(
        'plymouth-git'
    )
}

# Function to display usage information
function usage() {
    echo "Usage: $0 [--all] [--alacritty] [--aur-packages] [--base] [--bin] [--cava] [--dependencies] [--docker] [--dunst] [--fonts] [--gowall] [--latex] [--pip] [--flameshot] [--grub] [--lightdm] [--neofetch] [--nvim] [--optimus] [--paru] [--picom] [--plymouth] [--post] [--pulseaudio] [--qtile] [--ranger] [--rofi] [--thunar] [--wallpapers] [--xsettings] [--update]"
    exit 1
}

# Main script execution
if [ $# -eq 0 ]; then
    usage
fi

for arg in "$@"; do
    case $arg in
        --base)
            install_base
        ;;
        *)
            echo "Invalid option: $arg"
            usage
            ;;
    esac
done