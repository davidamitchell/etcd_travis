#!/bin/bash

VERSION=v2.2.1
FILE_ROOT="etcd-${VERSION}-linux-amd64"

echo
echo "Downloading ${VERSION} of etcd"

curl -L  https://github.com/coreos/etcd/releases/download/${FILE_ROOT}.tar.gz -o ${FILE_ROOT}.tar.gz
tar xzvf ${FILE_ROOT}.tar.gz
cd ${FILE_ROOT}

echo
echo "Starting etcd"
./etcd &
