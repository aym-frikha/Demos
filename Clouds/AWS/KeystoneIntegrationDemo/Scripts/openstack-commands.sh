#!/bin/sh

openstack role create k8s-admins
openstack role create k8s-viewers
openstack role create k8s-users
openstack project create k8s --domain k8s
openstack role add --user Euler --user-domain k8s --project k8s --project-domain k8s k8s-admins
