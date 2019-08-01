#!/usr/bin/env sh
VER=7.3.0
DIR=~/Downloads
MIRROR=https://artifacts.elastic.co/downloads/kibana

dl()
{
    OS=$1
    ARCH=$2
    ZIPTYPE=$3
    PLATFORM=${OS}-${ARCH}
    SHA512=kibana-$VER-$PLATFORM.$ZIPTYPE.sha512
    URL=$MIRROR/$SHA512
    printf "    # %s\n" $URL
    printf "    %s: sha512:%s\n" $PLATFORM `curl -s $MIRROR/$SHA512 | awk '{print $1}'`
}

printf "  '%s':\n" $VER
dl linux x86_64 tar.gz
dl darwin x86_64 tar.gz
dl windows x86_64 zip


