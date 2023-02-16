#!/bin/bash

echo "Let's clean up our environment"

kubectl delete -f manifests/mysql/mysql.yaml
kubectl delete -f manifests/mysql/mysql-volume.yaml

kubectl delete -f manifests/back/golang.yaml

kubectl delete -f manifests/proxy.yaml

echo "Don't forget to clean /mnt/data in minikube"