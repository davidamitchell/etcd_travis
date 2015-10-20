#!/bin/bash
echo
echo "__________.............--------TESTING STARTED--------.............__________"
echo


echo "attempting to install etcd"

curl -L  https://github.com/coreos/etcd/releases/download/v2.2.1/etcd-v2.2.1-linux-amd64.tar.gz -o etcd-v2.2.1-linux-amd64.tar.gz
tar xzvf etcd-v2.2.1-linux-amd64.tar.gz
cd etcd-v2.2.1-linux-amd64
./etcd &

./etcdctl --no-sync set mykey "this is awesome"
./etcdctl --no-sync get mykey
