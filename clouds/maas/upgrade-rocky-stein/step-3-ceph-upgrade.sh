#!/bin/bash

juju config ceph-mon source=cloud:bionic-stein
juju config ceph-osd source=cloud:bionic-stein
juju config ceph-radosgw source=cloud:bionic-stein


