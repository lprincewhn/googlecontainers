#!/usr/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/download.sh

for image in `kubeadm config images list --kubernetes-version=v1.11.2`
do
    download ${image}
done
