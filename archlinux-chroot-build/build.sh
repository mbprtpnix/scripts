#!/bin/bash

set -e -u

CHROOT=$HOME/chroot

arch-nspawn $CHROOT/root pacman -Syu

makechrootpkg -c -r $CHROOT -- --syncdeps
