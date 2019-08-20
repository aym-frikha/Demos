#!/bin/bash

juju config neutron-api action-managed-upgrade=True
juju config neutron-api openstack-origin='cloud:bionic-stein'
juju run --application neutron-api  is-leader
