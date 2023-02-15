#!/bin/bash

echo "Let's build goland"
minikube image build -t golang-project ./docker/back
kubectl apply -f ./manifests/back/golang-deployment.yaml
kubectl apply -f ./manifests/back/golang-service.yaml