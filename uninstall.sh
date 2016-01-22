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

echo "Removing $BIN_LOCATION/rmed"
rm $BIN_LOCATION/rmed

echo "Removing $BIN_LOCATION/rmed-vimdiff"
rm $BIN_LOCATION/rmed-vimdiff

echo "Removing $ETC_LOCATION/rmed.vim"
rm $ETC_LOCATION/rmed.vim
