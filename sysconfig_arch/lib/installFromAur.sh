#!/bin/bash

package=$1

cd /tmp
/usr/bin/curl --silent --remote-name https://aur.archlinux.org/cgit/aur.git/snapshot/$package.tar.gz
/usr/bin/tar --extract --gzip --file $package.tar.gz
cd $package
/usr/bin/makepkg --install --syncdeps --noconfirm
cd /tmp
/usr/bin/sudo /usr/bin/rm --recursive --force $package.tar.gz $package
