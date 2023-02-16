#!/bin/bash

echo "Adding a volume to minikube"
minikube ssh << EOF
sudo mkdir /mnt/data
exit
EOF

echo "Defining secret password"
kubectl create secret generic mysql-pass \
--from-literal=password=Imsosecret \
--from-literal=database=database

echo "Creating apps"
kubectl apply -f ./manifests/mysql/mysql-volume.yaml
kubectl apply -f ./manifests/mysql/mysql.yaml

minikube image build -t golang-project ./docker/back
kubectl apply -f ./manifests/back/golang.yaml

kubectl apply -f ./manifests/proxy.yaml
