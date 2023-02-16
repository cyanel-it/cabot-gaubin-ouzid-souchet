#!/bin/bash

echo "Deleting all created resources"
kubectl delete -f manifests/mysql/mysql.yaml
kubectl delete -f manifests/mysql/mysql-volume.yaml
kubectl delete secret mysql-pass

kubectl delete -f manifests/back/golang.yaml

kubectl delete -f manifests/proxy.yaml

kubectl delete secret mysql-pass

echo "Removing the volume in minikube"
minikube ssh << EOF
sudo rm -rf /mnt/data
exit
EOF
