#!/bin/bash

juju run-action designate/2 --wait pause
juju run-action designate/2 --wait openstack-upgrade
juju run-action designate/2 --wait resume

juju run-action designate/0 --wait pause
juju run-action designate/0 --wait openstack-upgrade
juju run-action designate/0 --wait resume

juju run-action designate/1 --wait pause
juju run-action designate/1 --wait openstack-upgrade
juju run-action designate/1 --wait resume
