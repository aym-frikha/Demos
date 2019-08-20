#!/bin/bash

juju config cinder action-managed-upgrade=True
juju config cinder openstack-origin='cloud:bionic-stein'
juju run --application cinder is-leader
