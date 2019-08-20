#!/bin/bash
juju run --application ceph-osd "systemctl start unattended-upgrades"
juju run --application ceph-osd "systemctl enable unattended-upgrades"

