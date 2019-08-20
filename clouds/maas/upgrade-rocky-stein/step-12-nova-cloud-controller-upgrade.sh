#!/bin/bash

juju run-action nova-cloud-controller/2 --wait pause
juju run-action nova-cloud-controller/2 --wait openstack-upgrade
juju run-action nova-cloud-controller/2 --wait resume

juju run-action nova-cloud-controller/0 --wait pause
juju run-action nova-cloud-controller/0 --wait openstack-upgrade
juju run-action nova-cloud-controller/0 --wait resume

juju run-action nova-cloud-controller/1 --wait pause
juju run-action nova-cloud-controller/1 --wait openstack-upgrade
juju run-action nova-cloud-controller/1 --wait resume
