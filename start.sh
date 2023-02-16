#!/bin/bash
echo "Lets deploy on port :80"
kubectl port-forward service/proxy 8080:80