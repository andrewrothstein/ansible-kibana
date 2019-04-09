#!/usr/bin/env sh
VER=6.7.0
DIR=~/Downloads
MIRROR=https://artifacts.elastic.co/downloads/kibana

dl()
{
    OS=$1
    PLATFORM=$2
    ZIPTYPE=$3
    FILE=kibana-$VER-$OS-$PLATFORM.$ZIPTYPE
    wget -O $DIR/$FILE $MIRROR/$FILE
}

dl linux x86_64 tar.gz
dl darwin x86_64 tar.gz
dl windows x86_64 zip
sha256sum $DIR/kibana-$VER-*

