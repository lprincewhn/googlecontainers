#!/usr/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
. ${DIR}/download.sh

download "k8s.gcr.io/heapster-influxdb-amd64:v1.3.3"
