#!/bin/bash
for file in *.yml; do kubectl apply -f "$file"; done