#!/usr/bin/env bash

BIN_LOCATION="/usr/local/bin"
ETC_LOCATION="/usr/local/etc"

setArgs () {
  var=0
  while [ "$1" != "" ]; do
    case $1 in
      "--prefix")
                          shift
                          ETC_LOCATION=`cd "$1"; pwd`
                          BIN_LOCATION=`cd "$1"; pwd`
                          ;;
    esac
    var=$((var+1))
    shift
  done
}

setArgs "$@"

if [ ! -d $BIN_LOCATION ]; then
    mkdir $BIN_LOCATION
fi

echo "Copy rmed to $BIN_LOCATION"
cp sh/rmed $BIN_LOCATION/rmed
chmod 755 $BIN_LOCATION/rmed

echo "Copy rmed-vimdiff to $BIN_LOCATION"
cp sh/rmed-vimdiff $BIN_LOCATION/rmed-vimdiff
chmod 755 $BIN_LOCATION/rmed-vimdiff

if [ ! -d $ETC_LOCATION ]; then
    mkdir -p $ETC_LOCATION
fi

echo "Copy rmed.vim to $ETC_LOCATION"
cp colorscheme/rmed.vim $ETC_LOCATION/rmed.vim
chmod 755 $ETC_LOCATION/rmed.vim
