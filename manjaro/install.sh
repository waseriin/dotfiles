#!/bin/sh

sudo pacman-mirrors -g
sudo pacman -Syyu
sudo pacman -S - < pkglist-pacman.txt

yay -S - < pkglist-aur.txt

guake --restore-preferences ~/preferences-guake

# rustup default stable