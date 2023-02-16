#!/bin/bash

# The order of the files is important !
kubectl apply -f mysql-volume.yaml
kubectl apply -f mysql.yaml
