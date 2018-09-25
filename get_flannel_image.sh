#!/usr/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/download.sh

download "quay.io/coreos/flannel:v0.10.0-amd64"
