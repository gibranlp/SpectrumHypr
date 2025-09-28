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

function install_bin(){
    mkdir -pv ~/.local/bin
    cd ~/.local/bin
    rm -rfv *
    mkdir -p ~/.local/bin
    cp -ruv ~/SpectrumHypr/bin/* ~/.local/bin
    if [ "$(ls -A ~/.local/bin)" ]; then
        chmod +x ~/.local/bin/*
    fi
}

install_bin