#!/bin/bash

juju config nova-compute-kvm	 action-managed-upgrade=True
juju config nova-compute-kvm openstack-origin='cloud:bionic-stein'
juju run --application nova-compute-kvm is-leader

