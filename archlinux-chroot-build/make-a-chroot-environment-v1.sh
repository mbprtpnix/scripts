#!/bin/bash
set -e

echo "################################################################"
echo "#####                        chroot                        #####"
echo "################################################################"

#https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_Clean_Chroot

sudo pacman -S devtools --needed --noconfirm

echo "chroot for looplinux packages"

[ -d $HOME"/Documents/chroot-looplinux" ] || mkdir -p $HOME"/Documents/chroot-looplinux"
CHROOT=$HOME/Documents/chroot-looplinux
mkarchroot $CHROOT/root base-devel
arch-nspawn $CHROOT/root pacman -Syu

echo "chroot for all but looplinux packages"

[ -d $HOME"/Documents/chroot" ] || mkdir -p $HOME"/Documents/chroot"
CHROOT=$HOME/Documents/chroot
mkarchroot $CHROOT/root base-devel
arch-nspawn $CHROOT/root pacman -Syu

echo "##############################################################"
echo "####################         DONE          ###################"
echo "##############################################################"
