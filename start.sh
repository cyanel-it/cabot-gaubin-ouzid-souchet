#!/bin/bash
echo "On peut accéder à l'application via http://localhost:8080"
kubectl port-forward service/proxy 8080:80
