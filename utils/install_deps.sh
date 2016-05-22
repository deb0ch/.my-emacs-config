#!/bin/sh

echo "Installing config's dependencies..."

packages="global markdown"

sudo apt-get install $packages

echo "Done installing config's dependencies."

echo "Installing patched fonts for powerline..."

fonts_patcher="./modules/fonts/install.sh"

if [ -f $fonts_patcher ]
then
    sudo $fonts_patcher
else
    echo "Please run this script from my_emacs_config base directory."
    exit
fi

echo "Done installing patched fonrs for powerline."

echo "Please change your terminal's or system's default font the a patched one for powerline to display properly."
