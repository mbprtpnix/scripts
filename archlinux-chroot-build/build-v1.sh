#!/bin/bash

### Setting up a chroot
# mkdir ~/chroot

CHROOT=$HOME/chroot

# mkarchroot $CHROOT/root base-devel

### Custom pacman.conf
# mkarchroot -C <pacman.conf> -M <makepkg.conf> $CHROOT/root base-devel

### Building in the chroot
arch-nspawn $CHROOT/root pacman -Syu
makechrootpkg -c -r $CHROOT -- --syncdeps

### Pre-install required packages
# makechrootpkg -c -r $CHROOT -I build-dependency-1.0-1-x86_64.pkg.tar.xz -I required-package-2.0-2-x86_64.pkg.tar.xz

### Passing arguments to makepkg
# makechrootpkg -c -r $CHROOT -- --check
