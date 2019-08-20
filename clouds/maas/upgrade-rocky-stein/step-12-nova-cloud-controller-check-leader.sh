#!/bin/bash

juju config nova-cloud-controller action-managed-upgrade=True
juju config nova-cloud-controller openstack-origin='cloud:bionic-stein'
juju run --application nova-cloud-controller is-leader
