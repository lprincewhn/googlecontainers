#!/usr/bin/bash

OLD_IFS="$IFS"
for image in `kubeadm config images list --kubernetes-version=v1.11.2`
do
    IFS="/"
    arr=(${image})
    IFS=":"
    registry=${arr[0]}
    arr1=(${arr[1]})
    name=${arr1[0]}
    tag=${arr1[1]}
    echo "docker pull lprince/googlecontainers:${name}-${tag}"
    docker pull lprince/googlecontainers:${name}-${tag}
    echo "docker tag lprince/googlecontainers:${name}-${tag} ${registry}/${name}:${tag}"
    docker tag lprince/googlecontainers:${name}-${tag} ${registry}/${name}:${tag}
done
IFS="$OLD_IFS"
docker images
