#!/bin/bash

juju run-action openstack-dashboard/2 --wait pause
juju run-action openstack-dashboard/2 --wait openstack-upgrade
juju run-action openstack-dashboard/2 --wait resume

juju run-action openstack-dashboard/0 --wait pause
juju run-action openstack-dashboard/0 --wait openstack-upgrade
juju run-action openstack-dashboard/0 --wait resume

juju run-action openstack-dashboard/1 --wait pause
juju run-action openstack-dashboard/1 --wait openstack-upgrade
juju run-action openstack-dashboard/1 --wait resume
