#!/bin/bash

juju config glance action-managed-upgrade=True
juju config glance openstack-origin='cloud:bionic-stein'
juju run --application glance is-leader
