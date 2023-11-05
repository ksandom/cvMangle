#!/bin/bash
# Updates cvMangle, assuming that a linked install has been performed.

if [ ! -e bin ]; then
    echo "This script is expected to be run from the root of the repo like this:
    ./install/linkedInstall.sh"
    exit 1
fi

./install/linkedUnInstall.sh
git pull
./install/linkedInstall.sh
