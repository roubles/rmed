#!/usr/bin/env bash

if [ ! -d /usr/local/bin ]; then
    mkdir /usr/local/bin
fi

cp sh/rmed /usr/local/bin
cp sh/rmed-vimdiff /usr/local/bin

mkdir -p ~/.rmed
cp colorscheme/github.vim ~/.rmed
