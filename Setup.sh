#!/bin/bash
###################################################################
##
#     Setup my dotfiles
#


## Make sure this script is executed from the directory where it lives
olddir=$(pwd)
cd $(dirname $0)

## Some directories should exist before we start
mkdir --parents ~/.config
mkdir --parents ~/.local/share/applications

## Take all files (or dirs) in simpleDots,
## delete them if they exist as a dotfile in ~/ or in ~/.config/
## and recreate them as a link to this repo.
echo "Recreating simpledots..."
for target in $(find $(pwd)/simpleDots -maxdepth 1 -mindepth 1 ! -name "*.swp" ! -name "*+*")
do
	basetarget=$(basename $target)
	echo "   $basetarget"
	rm --force --recursive ~/.$basetarget
	rm --force --recursive ~/.config/$basetarget
	ln --symbolic --no-dereference --force $target ~/.$basetarget
done

### Do the same for configDots
echo "Recreating configDots..."
for target in $(find $(pwd)/configDots -maxdepth 1 -mindepth 1 ! -name "*.swp" ! -name "*+*")
do
	basetarget=$(basename $target)
	echo "   $basetarget"
	rm --force --recursive ~/.$basetarget
	rm --force --recursive ~/.config/$basetarget
	ln --symbolic --no-dereference --force $target ~/.config/$basetarget
done

### ... and for desktopfiles
echo "Recreating desktopfiles..."
for target in $(find $(pwd)/desktopfiles -maxdepth 1 -mindepth 1 ! -name "*.swp" ! -name "*+*")
do
	basetarget=$(basename $target)
	echo "   $basetarget"
	rm --force --recursive ~/.local/share/applications/$basetarget
	ln --symbolic --no-dereference --force $target ~/.local/share/applications/$basetarget
done

## So far, we ignored files containing the + character. Now,
## if we got an option passed to the script, we will check if there is
## a dot file with +option as a suffix.
## If we find one, we will replace the original link we create before with a
## new link to this file.
if [ $# == 1 ]
then
	echo "Recreating simpledots for option $1..."
	for target in $(find $(pwd)/simpleDots -maxdepth 1 -mindepth 1 ! -name "*.swp" -name "*+$1")
	do
		basetarget=$(echo $(basename $target) | cut --delimiter="+" --field="1")
		echo "   $basetarget"
		rm --force --recursive ~/.$basetarget
		ln --symbolic --no-dereference --force $target ~/.$basetarget
	done
	echo "Recreating configDots for option $1..."
	for target in $(find $(pwd)/configDots -maxdepth 1 -mindepth 1 ! -name "*.swp" -name "*+$1")
	do
		basetarget=$(echo $(basename $target) | cut --delimiter="+" --field="1")
		echo "   $basetarget"
		rm --force --recursive ~/.config/$basetarget
		ln --symbolic --no-dereference --force $target ~/.config/$basetarget
	done
	echo "Recreating desktopfiles for option $1..."
	for target in $(find $(pwd)/desktopfiles -maxdepth 1 -mindepth 1 ! -name "*.swp" -name "*+$1")
	do
		basetarget=$(echo $(basename $target) | cut --delimiter="+" --field="1")
		echo "   $basetarget"
		rm --force --recursive ~/.local/share/applications/$basetarget
		ln --symbolic --no-dereference --force $target ~/.local/share/applications/$basetarget
	done
fi


cd $olddir
