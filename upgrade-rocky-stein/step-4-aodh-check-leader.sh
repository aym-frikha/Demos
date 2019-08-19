#!/bin/bash

juju config aodh action-managed-upgrade=True
juju config aodh openstack-origin='cloud:bionic-stein'
juju run --application aodh is-leader


