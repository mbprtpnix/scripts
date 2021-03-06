#!/bin/bash

pacman \
    -Syy \
    --needed \
    --noconfirm \
    reflector \
    python \

reflector \
    --latest 5 \
    --age 6 \
    --protocol https \
    --sort rate \
    --save /etc/pacman.d/mirrorlist

pacman \
    -Syyu \
    --needed \
    --noconfirm \
    base-devel \
    screen \
    tmux \
    bash-completion \
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
    pacman-contrib \
    wireguard-tools
