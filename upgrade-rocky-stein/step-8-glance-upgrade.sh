#!/bin/bash

juju run-action glance/0 --wait pause
juju run-action glance/0 --wait openstack-upgrade
juju run-action glance/0 --wait resume

juju run-action glance/2 --wait pause
juju run-action glance/2 --wait openstack-upgrade
juju run-action glance/2 --wait resume

juju run-action glance/1 --wait pause
juju run-action glance/1 --wait openstack-upgrade
juju run-action glance/1 --wait resume
