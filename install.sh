#!/usr/bin/env bash

if [ ! -d /usr/local/bin ]; then
    mkdir /usr/local/bin
fi

cp sh/rmed /usr/local/bin/rmed
chmod a+rx /usr/local/bin/rmed

cp sh/rmed-vimdiff /usr/local/bin/rmed-vimdiff
chmod a+rx /usr/local/bin/rmed-vimdiff

if [ ! -d /usr/local/etc ]; then
    mkdir -p /usr/local/etc
fi

cp colorscheme/rmed.vim /usr/local/etc/rmed.vim
chmod a+rx /usr/local/etc/rmed.vim
