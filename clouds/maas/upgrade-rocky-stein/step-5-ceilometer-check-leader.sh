#!/bin/bash
juju config ceilometer action-managed-upgrade=True
juju config ceilometer openstack-origin='cloud:bionic-stein'
juju run --application ceilometer is-leader
