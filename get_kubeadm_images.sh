#!/usr/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/download.sh

for image in `kubeadm config images list --kubernetes-version=${RELEASE}`
do
    download ${image}
done
