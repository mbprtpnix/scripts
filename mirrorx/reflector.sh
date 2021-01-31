#!/bin/bash

set -e -u

echo "#########################"
echo "##### SETUP MIRRORX #####"
echo "#########################"

sudo reflector --verbose --latest 25 --age 6 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

echo "################"
echo "##### DONE #####"
echo "################"
