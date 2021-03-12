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
#development files and programs
sudo eopkg install -y pango-devel
sudo eopkg install -y libcairo-devel
sudo eopkg install -y gdk-pixbuf-devel
sudo eopkg install -y gdk-pixbuf-32bit-devel
sudo eopkg install -y gdk-pixbuf-32bit
sudo eopkg install -y gdk-pixbuf
sudo eopkg install -y gdk-pixbuf-devel
sudo eopkg install -y libatk-devel
sudo eopkg install -y libgtk-2
sudo eopkg install -y libgtk-2-devel
sudo eopkg install -y libgtk-2-32bit
sudo eopkg install -y libgtk-2-32bit-devel
sudo eopkg install -y libgtk-3
sudo eopkg install -y libgtk-3-devel
sudo eopkg install -y libgtk-3-32bit
sudo eopkg install -y libgtk-3-32bit-devel
sudo eopkg install -y libgtk-4
sudo eopkg install -y libgtk-4-devel
sudo eopkg install -y libx11-32bit
sudo eopkg install -y libx11-32bit-devel
sudo eopkg install -y libx11-devel
sudo eopkg install -y glibc-devel
sudo eopkg install -y glibc-32bit
sudo eopkg install -y glibc-32bit-devel
sudo eopkg install -y g++
sudo eopkg install -y gdb
sudo eopkg install -y lazarus
sudo eopkg install -y fpc

#setting up some programming
sudo eopkg install -y nim
sudo eopkg install -y golang
sudo eopkg install -y julia

#setting up games
sudo eopkg install -y steam
sudo eopkg install -y lutris
sudo eopkg install -y discord

#setting up theme
sudo eopkg install -y arc-gtk-theme

#setting up tools
sudo eopkg install -y godot-classic
sudo eopkg install -y vscode
sudo eopkg install -y kakoune
sudo eopkg install -y neofetch

#installing bitwig
#sudo eopkg bi --ignore-safety -y https://raw.githubusercontent.com/getsolus/3rd-party/master/multimedia/music/bitwig-studio/pspec.xml
#sudo eopkg install -y bitwig-studio*.eopkg;sudo rm bitwig-studio*.eopkg

wget https://downloads.bitwig.com/stable/3.2.8/bitwig-studio-3.2.8.deb
sudo eopkg it binutils
ar xf bitwig-studio-3.2.8.deb
sudo tar xfv data.tar.xz -C /
rm control.tar.gz data.tar.xz debian-binary

#installing ocenaudio
sudo eopkg bi --ignore-safety -y https://raw.githubusercontent.com/getsolus/3rd-party/master/multimedia/music/ocenaudio/pspec.xml
sudo eopkg install -y ocenaudio*.eopkg;sudo rm ocenaudio*.eopkg

#flatpak programs
sudo eopkg install -y flatpak xdg-desktop-portal-gtk
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install -y flathub org.glimpse_editor.Glimpse
sudo flatpak install -y flathub com.github.libresprite.LibreSprite
sudo flatpak install -y flathub com.orama_interactive.Pixelorama