#!/bin/bash


#
# VERSION=v2.2.1
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



curl -L  https://github.com/coreos/etcd/releases/download/v2.2.2/etcd-v2.2.2-linux-amd64.tar.gz -o etcd-v2.2.2-linux-amd64.tar.gz
tar xzvf etcd-v2.2.2-linux-amd64.tar.gz
cd etcd-v2.2.2-linux-amd64

echo
echo "Starting etcd"
./etcd &
