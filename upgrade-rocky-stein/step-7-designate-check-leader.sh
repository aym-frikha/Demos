#!/bin/bash

juju config designate action-managed-upgrade=True
juju config designate openstack-origin='cloud:bionic-stein'
juju run --application designate is-leader


