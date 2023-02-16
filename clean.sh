#!/bin/bash

echo "Let's clean up our environment"

kubectl delete -f manifests/back/golang-deployment.yaml
kubectl delete -f manifests/back/golang-service.yaml

kubectl delete -f manifests/mysql/mysql.yaml
kubectl delete -f manifests/mysql/mysql-volume.yaml

kubectl delete -f manifests/proxy.yaml
