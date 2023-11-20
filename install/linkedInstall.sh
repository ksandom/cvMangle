#!/bin/bash
# Install to $HOME/bin as symlinks to the repo. Useful for developing the project.
# Copyright (C) 2023  Kevin Sandom

./install/installDeps.sh

mkdir -pv ~/bin ~/.config

if [ ! -e bin ]; then
    echo "This script is expected to be run from the root of the repo like this:
    ./install/linkedInstall.sh"
    exit 1
fi

ln -vsf `pwd`/bin/* ~/bin

rm -fv ~/.config/cvMangle
ln -vsf `pwd` ~/.config/cvMangle
