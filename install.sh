#!/bin/bash
pkg update -y
pkg install git fish starship neofetch -y

mkdir -p ~/.config/neofetch ~/.config/fish ~/.termux

cp neofetch-config.conf ~/.config/neofetch/config.conf
cp sword.txt ~/.config/neofetch/
cp starship.toml ~/.config/
cp config.fish ~/.config/fish/
cp termux.properties ~/.termux/
cp colors.properties ~/.termux/
cp .bashrc ~/

chsh -s fish
termux-reload-settings
echo "Done!"
