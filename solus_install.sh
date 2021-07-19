#!/bin/bash

echo "please update before running this setup"
echo "place your init.vim file in the the settings folder"

#setting up neovim
sudo eopkg install -y git
sudo eopkg install -y neovim

echo 'setting up neovim and vim-plug'
mkdir -p ~/.config/nvim
FILE=./settings/init.vim
if [ -f "$FILE" ]; then
   cp settings/init.vim ~/.config/nvim
else
   echo 'place your init.vim file in the settings folder , rerun to install it'
fi
echo "done setting up neovim"

#setting up lazarus
#development files for lazarus
sudo eopkg install -c system.devel
sudo eopkg install -y pango-devel
sudo eopkg install -y libcairo-devel
sudo eopkg install -y gdk-pixbuf-devel
sudo eopkg install -y libatk-devel
sudo eopkg install -y libgtk-2-devel
sudo eopkg install -y lazarus

#setting up some programming
sudo eopkg install -y nim
sudo eopkg install -y golang
sudo eopkg install -y julia
sudo eopkg install -y fpc
sudo eopkg install -y g++
sudo eopkg install -y gdb

#setting up games
sudo eopkg install -y steam
sudo eopkg install -y lutris
sudo eopkg install -y discord

#setting up tools
sudo eopkg install -y vscode
sudo eopkg install -y neofetch

#flatpak install
sudo eopkg install -y flatpak xdg-desktop-portal-gtk
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
#flatpak programs
sudo flatpak install -y  flathub org.godotengine.Godot
sudo flatpak install -y flathub org.glimpse_editor.Glimpse
sudo flatpak install -y flathub com.github.libresprite.LibreSprite
sudo flatpak install -y flathub com.orama_interactive.Pixelorama
sudo flatpak install -y flathub org.blender.Blender
