#!/bin/bash

juju config keystone action-managed-upgrade=True
juju config keystone openstack-origin='cloud:bionic-stein'

echo "PLEASE check the leader"
juju run --application keystone is-leader
