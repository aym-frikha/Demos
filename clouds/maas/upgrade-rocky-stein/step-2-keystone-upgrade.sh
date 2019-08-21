#!/bin/bash



juju run --unit  keystone/1 "sudo keystone-manage token_flush"
juju run-action keystone/1 --wait pause
juju run-action keystone/1 --wait openstack-upgrade
juju run-action keystone/1 --wait resume
juju run-action keystone/0 --wait pause
juju run-action keystone/0 --wait openstack-upgrade
juju run-action keystone/0 --wait resume
juju run-action keystone/2 --wait pause
juju run-action keystone/2 --wait openstack-upgrade
juju run-action keystone/2 --wait resume
