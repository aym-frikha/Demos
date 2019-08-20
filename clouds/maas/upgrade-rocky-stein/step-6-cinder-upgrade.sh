#!/bin/bash
juju run-action cinder/0 --wait pause
juju run-action cinder/0 --wait openstack-upgrade
juju run-action cinder/0 --wait resume

juju run-action cinder/2 --wait pause
juju run-action cinder/2 --wait openstack-upgrade
juju run-action cinder/2 --wait resume

juju run-action cinder/1 --wait pause
juju run-action cinder/1 --wait openstack-upgrade
juju run-action cinder/1 --wait resume
