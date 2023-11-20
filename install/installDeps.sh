#!/bin/bash
# Install dependencies within the cvMangle directory.
# Copyright (C) 2023  Kevin Sandom

mkdir -p lib
cd lib

if [ -d hk-pandoc-filters ]; then
    cd hk-pandoc-filters
    git pull
else
    git submodule add https://github.com/chrisaga/hk-pandoc-filters.git
fi
