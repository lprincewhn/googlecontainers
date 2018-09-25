#!/usr/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/download.sh

download "k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0"
