#!/usr/bin/bash

function download() {
    image=$1
    OLD_IFS="$IFS"
    IFS="/"
    arr=(${image})
    if [ ${#arr[@]} -eq 3 ]
    then
        registry=${arr[0]}/${arr[1]}
        name_version=${arr[2]}
    else
        registry=${arr[0]}
        name_version=${arr[1]} 
    fi
    IFS=":"
    arr=(${name_version})
    if [ ${#arr[@]} -eq 2 ]
    then
        name=${arr[0]}
        tag=${arr[1]}
    else
        name=${name_version}
        tag="latest"
    fi
    echo "docker pull lprince/googlecontainers:${name}-${tag}"
    docker pull lprince/googlecontainers:${name}-${tag}
    echo "docker tag lprince/googlecontainers:${name}-${tag} ${registry}/${name}:${tag}"
    docker tag lprince/googlecontainers:${name}-${tag} ${registry}/${name}:${tag}
    IFS="$OLD_IFS"
}

download "k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0"
