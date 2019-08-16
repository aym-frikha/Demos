#!/bin/bash
kubectl apply -f storage-class.yaml
kubectl apply -f  PersistentVolumeClaim.yaml
kubectl apply -f apple.yaml
kubectl apply -f banana.yaml
kubectl apply -f ingress.yaml
