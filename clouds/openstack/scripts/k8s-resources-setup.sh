#!/bin/bash
mkdir -p /home/ubuntu/.kube/
juju scp kubernetes-master/0:config ~/.kube/config
kubectl apply -f clouds/openstack/scripts/storage-class.yaml
kubectl apply -f  clouds/openstack/scripts/PersistentVolumeClaim.yaml
kubectl apply -f clouds/openstack/scripts/apple.yaml
kubectl apply -f clouds/openstack/scripts/banana.yaml
kubectl apply -f clouds/openstack/scripts/ingress.yaml
