#!/usr/bin/env sh
VER=7.0.0
DIR=~/Downloads
MIRROR=https://artifacts.elastic.co/downloads/kibana

dl()
{
    OS=$1
    PLATFORM=$2
    ZIPTYPE=$3
    SHA512=kibana-$VER-$OS-$PLATFORM.$ZIPTYPE.sha512
    printf "%s: sha512:%s\n" "$OS-$PLATFORM" `curl -s $MIRROR/$SHA512 | awk '{print $1}'`
}

dl linux x86_64 tar.gz
dl darwin x86_64 tar.gz
dl windows x86_64 zip


