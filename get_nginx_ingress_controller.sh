#!/usr/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/download.sh

download "gcr.io/google_containers/defaultbackend:1.4"
download "quay.io/kubernetes-ingress-controller/nginx-ingress-controller:0.19.0"
