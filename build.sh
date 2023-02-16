#!/bin/bash

echo "Let's build it!"

kubectl apply -f ./manifests/mysql/mysql-volume.yaml
kubectl apply -f ./manifests/mysql/mysql.yaml

minikube image build -t golang-project ./docker/back
kubectl apply -f ./manifests/back/golang.yaml

kubectl apply -f ./manifests/proxy.yaml
