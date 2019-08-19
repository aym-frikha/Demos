#!/bin/bash

juju config gnocchi action-managed-upgrade=True
juju config gnocchi openstack-origin='cloud:bionic-stein'
juju run --application gnocchi is-leader
