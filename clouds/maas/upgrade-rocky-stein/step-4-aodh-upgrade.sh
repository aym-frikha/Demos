#!/bin/bash

juju run-action aodh/2 --wait pause
juju run-action aodh/2 --wait openstack-upgrade
juju run-action aodh/2 --wait resume

juju run-action aodh/0 --wait pause
juju run-action aodh/0 --wait openstack-upgrade
juju run-action aodh/0 --wait resume

juju run-action aodh/1 --wait pause
juju run-action aodh/1 --wait openstack-upgrade
juju run-action aodh/1 --wait resume


