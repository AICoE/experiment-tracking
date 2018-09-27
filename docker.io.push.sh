#!/bin/sh
VERSION="0.5.0-rc13"
MAINTAINERS="Zak Hassan"
COMPONENT="mlflow-server"

#cleaning up the image folder:

DKR_HUB_NAME=quay.io/zmhassan/mlflow:$VERSION
IMAGE_NAME=mlflow:$VERSION


# docker run   -p 5000:5000    docker.io/zmhassan/openshift-mlflow-server
docker   build  --rm -t  $IMAGE_NAME  .

docker tag  $IMAGE_NAME $DKR_HUB_NAME
docker push  $DKR_HUB_NAME
