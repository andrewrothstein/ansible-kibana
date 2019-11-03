#!/usr/bin/env sh

DIR=~/Downloads
APP=kibana
MIRROR=https://artifacts.elastic.co/downloads/${APP}

dl() {
    ver=$1
    os=$2
    arch=$3
    archive_type=$4
    local platform="${os}-${arch}"
    local url=https://artifacts.elastic.co/downloads/${APP}/${APP}-${ver}-${platform}.${archive_type}.sha512
    printf "    # %s\n" $url
    printf "    '%s': sha512:%s\n" $platform $(curl -sSL $url | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    printf "  '%s':\n" $ver
    dl $ver linux x86_64 tar.gz
    dl $ver darwin x86_64 tar.gz
    dl $ver windows x86_64 zip
}

#dl_ver ${1:-7.4.2}
dl_ver 6.0.1
dl_ver 6.1.0
dl_ver 6.1.1
dl_ver 6.1.2
dl_ver 6.1.3
dl_ver 6.2.1
dl_ver 6.2.2
dl_ver 6.2.3
dl_ver 6.2.4
dl_ver 6.4.1
dl_ver 6.4.2
dl_ver 6.4.3
dl_ver 6.5.1
dl_ver 6.5.2
dl_ver 6.6.2
dl_ver 6.7.0
dl_ver 7.0.0
dl_ver 7.1.0
dl_ver 7.1.1

