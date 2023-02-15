#!/bin/bash

echo "Let's clean up our environment"
kubectl delete deployment golang
kubectl delete svc golang
