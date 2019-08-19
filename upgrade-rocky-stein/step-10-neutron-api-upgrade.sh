#!/bin/bash

juju run-action neutron-api/2 --wait pause
juju run-action neutron-api/2 --wait openstack-upgrade
juju run-action neutron-api/2 --wait resume

juju run-action neutron-api/0 --wait pause
juju run-action neutron-api/0 --wait openstack-upgrade
juju run-action neutron-api/0 --wait resume

juju run-action neutron-api/1 --wait pause
juju run-action neutron-api/1 --wait openstack-upgrade
juju run-action neutron-api/1 --wait resume
