#!/bin/bash
## Install yaourt


test $(whoami) = root && { echo "You cannot be root. However, you need root privileges granted by sudo."; exit 1; }

## Exit on error
set -e

## Install devel
sudo pacman -Sy --needed --noconfirm base-devel

olddir=$(pwd)

## Download, Compile and Install package-query
cd /tmp
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz
tar -xvzf package-query.tar.gz
cd package-query
makepkg -si
cd /tmp
rm -rf package-query.tar.gz package-query

## Download, Compile and Install yaourt
cd /tmp
curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz
tar -xvzf yaourt.tar.gz
cd yaourt
makepkg -si
cd /tmp
rm -rf yaourt.tar.gz yaourt


## Return to where we came from
cd $olddir


