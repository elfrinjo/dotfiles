#!/bin/bash

directory=$1

## ARG1 needs to be a directory
if [ ! -d $directory ]
then
	echo Usage: $0 [Directory with menuitems]
	exit 1
fi

$directory/$(ls --color=never -1  $directory | dmenu)
