#!/bin/bash
pkg update -y
pkg install git fish starship neofetch -y

mkdir -p ~/.config/neofetch ~/.config/fish ~/.termux

cp starship.toml ~/.config/
cp config.conf ~/.config/neofetch/
cp sword.txt ~/.config/neofetch/
cp config.fish ~/.config/fish/
cp termux.properties ~/.termux/
cp colors.properties ~/.termux/
cp .bashrc ~/

termux-reload-settings
echo "Done! ⚡"
