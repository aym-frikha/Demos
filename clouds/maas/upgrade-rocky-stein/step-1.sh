#!/bin/bash
juju run --application ceph-osd "systemctl stop unattended-upgrades"
juju run --application ceph-osd "systemctl disable unattended-upgrades"
