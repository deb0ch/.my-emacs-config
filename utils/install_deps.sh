#!/bin/sh

echo "Installing config's dependencies..."
packages="global markdown silversearcher-ag"
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


echo "Building Helm..."
cd ./modules/helm && make ; cd ..
echo "Done building Helm"


echo "Building pdf-tools..."
make -C ../modules/pdf-tools/ install-server-deps
make -C ../modules/pdf-tools/ -s
echo "Done building pdf-tools"

echo "Building magit..."
make -C ../modules/magit/
echo "Done building magit"


echo "Please change your terminal's or system's default font the a patched one for powerline to display properly."
