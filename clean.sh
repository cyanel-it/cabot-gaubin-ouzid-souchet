#!/bin/bash

echo "Let's clean up our environment"

kubectl delete deployment golang
kubectl delete svc golang

kubectl delete deployment mysql
kubectl delete svc mysql

kubectl delete deployment proxy
kubectl delete svc proxy
