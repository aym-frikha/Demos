#!/bin/bash

juju run-action nova-compute-kvm/1 --wait pause
juju run-action nova-compute-kvm/1 --wait openstack-upgrade
juju run-action nova-compute-kvm/1 --wait resume

juju run-action nova-compute-kvm/2 --wait pause
juju run-action nova-compute-kvm/2 --wait openstack-upgrade
juju run-action nova-compute-kvm/2 --wait resume

juju run-action nova-compute-kvm/0 --wait pause
juju run-action nova-compute-kvm/0 --wait openstack-upgrade
juju run-action nova-compute-kvm/0 --wait resume

juju run-action nova-compute-kvm/3 --wait pause
juju run-action nova-compute-kvm/3 --wait openstack-upgrade
juju run-action nova-compute-kvm/3 --wait resume

juju run-action nova-compute-kvm/4 --wait pause
juju run-action nova-compute-kvm/4 --wait openstack-upgrade
juju run-action nova-compute-kvm/4 --wait resume
