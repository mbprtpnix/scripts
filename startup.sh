#!/bin/bash

pacman \
    -Syyu \
    --needed \
    --noconfirm \
    base-devel \
    reflector \
    bash-completion \
    python \
    neovim \
    vim \
    git \
    curl \
    wget \
    rsync \
    rclone \
    stow \
    htop \
    devtools \
    archiso \
    pacman-contrib

reflector \
    --latest 5 \
    --age 6 \
    --protocol https \
    --sort rate \
    --save /etc/pacman.d/mirrorlist
