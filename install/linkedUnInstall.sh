#!/bin/bash
# UnInstall from $HOME/bin .
# Copyright (C) 2023  Kevin Sandom

mkdir -pv ~/bin ~/.config

if [ ! -e bin ]; then
    echo "This script is expected to be run from the root of the repo like this:
    ./install/linkedInstall.sh"
    exit 1
fi

cd bin
for executable in *; do
    rm -fv ~/bin/$executable
done

rm -fv ~/.config/cvMangle
