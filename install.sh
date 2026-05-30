#!/bin/bash
set -e

echo "Installing packages..."
pkg update -y
pkg install git fish starship neofetch -y

echo "Setting up config files..."
mkdir -p ~/.config/neofetch ~/.config/fish ~/.termux

REPO="https://raw.githubusercontent.com/koushik-01-exe/Termux-Theme/main"

curl -sL "$REPO/neofetch-config.conf" -o ~/.config/neofetch/config.conf
curl -sL "$REPO/sword.txt" -o ~/.config/neofetch/sword.txt
curl -sL "$REPO/starship.toml" -o ~/.config/starship.toml
curl -sL "$REPO/config.fish" -o ~/.config/fish/config.fish
curl -sL "$REPO/termux.properties" -o ~/.termux/termux.properties
curl -sL "$REPO/colors.properties" -o ~/.termux/colors.properties
curl -sL "$REPO/.bashrc" -o ~/.bashrc

chsh -s fish
termux-reload-settings

echo "Done! Restart Termux ⚡"
