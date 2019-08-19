#!/bin/bash

juju run-action gnocchi/2 --wait pause
juju run-action gnocchi/2 --wait openstack-upgrade
juju run-action gnocchi/2 --wait resume

juju run-action gnocchi/0 --wait pause
juju run-action gnocchi/0 --wait openstack-upgrade
juju run-action gnocchi/0 --wait resume

juju run-action gnocchi/1 --wait pause
juju run-action gnocchi/1 --wait openstack-upgrade
juju run-action gnocchi/1 --wait resume
