#!/bin/bash

VERSION="v2.2.2"
FILE_ROOT="etcd-${VERSION}-linux-amd64"
FILE_NAME="${FILE_ROOT}.tar.gz"

curl -L  "https://github.com/coreos/etcd/releases/download/${VERSION}/${FILE_NAME}" -o "${FILE_NAME}"
tar xzvf "${FILE_NAME}"
cd $FILE_ROOT

echo
echo "Starting etcd"
./etcd &
sleep 1




#
#
# FILE_ROOT="etcd-${VERSION}-linux-amd64"
#
# echo
# echo "Downloading ${VERSION} of etcd"
# echo "into ${FILE_ROOT}"
#
# curl -L  https://github.com/coreos/etcd/releases/download/$FILE_ROOT.tar.gz -o $FILE_ROOT.tar.gz
# tar xzvf $FILE_ROOT.tar.gz
# cd $FILE_ROOT
#
