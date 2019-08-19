#!/bin/bash

juju config openstack-dashboard	 action-managed-upgrade=True
juju config openstack-dashboard	 openstack-origin='cloud:bionic-stein'
juju run --application openstack-dashboard is-leader
